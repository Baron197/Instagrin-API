const fs = require('fs')
const { sqlDB } = require('../databases')
const { uploader } = require('../helpers/uploader')

module.exports = {
    getAllPost: (req,res) => {   
        var sql =`SELECT p.*, u.username, u.profileimage
                    FROM posts p 
                    JOIN users u 
                    ON p.userId = u.id 
                    ORDER BY p.id DESC;`;
        sqlDB.query(sql, (err,results) => {
            if(err) {
                // console.log(err)
                return res.status(500).send(err)
            }
    
            res.status(200).send(results)
        })
    },
    getAllPostByUserId : (req,res) => {
        var sql =`SELECT p.*, u.username, u.profileimage
                    FROM posts p 
                    JOIN users u 
                    ON p.userId = u.id 
                    WHERE userId = ${req.params.id}
                    ORDER BY p.id DESC;`;
        sqlDB.query(sql, (err,results) => {
            if(err) {
                // console.log(err)
                return res.status(500).send(err)
            }
    
            res.status(200).send(results)
        })
    },
    getAllPostExplore : (req,res) => {
        var sql =`SELECT p.*, u.username, u.profileimage
                    FROM posts p 
                    JOIN users u 
                    ON p.userId = u.id 
                    WHERE userId <> ${req.params.id}
                    ORDER BY p.id DESC;`;
        sqlDB.query(sql, (err,results) => {
            if(err) {
                // console.log(err)
                return res.status(500).send(err)
            }
    
            res.status(200).send(results)
        })
    },
    addPost : (req,res) => {
        const path = '/posts';
        const upload = uploader(path, 'POST').fields([{ name: 'image' }]);

        upload(req, res, (err) => {
            if(err){
                return res.status(500).send({ message: 'Upload file failed !', error: err.message });
            }

            const { image } = req.files;
            console.log(image)

            console.log(req.body.data)
            const data = JSON.parse(req.body.data);
            console.log(data)

            data.image = `${path}/${image[0].filename}`

            var sql = `INSERT INTO posts SET ? `
            
            sqlDB.query(sql, data, (err, results) => {
                if(err) {
                    fs.unlinkSync('./public' + path + '/' + image[0].filename)
                    return res.status(500).send({ message: 'Add Post Failed!', err })
                }
        
                res.status(200).send(results)
            })
        })
    },
    editPost: (req,res) => {
        var sql = `UPDATE posts SET ? WHERE id = ${sqlDB.escape(req.params.id)}`
           
        sqlDB.query(sql, req.body, (err, results) => {
            if(err) {
                return res.status(500).send(err)
            }
       
            res.status(200).send(results)
        })
    },
    deletePost: (req,res) => {
        var sql = `SELECT * FROM posts WHERE id = ${sqlDB.escape(req.params.id)}`;
    
        sqlDB.query(sql, (err,results) => {
            if(err) return res.status(500).send(err)
    
            sql = `DELETE FROM posts WHERE id = ${sqlDB.escape(req.params.id)}`;
            sqlDB.query(sql,(err, results1) => {
                if(err) return res.status(500).send(err)
                
                try {
                    fs.unlinkSync('./public' + results[0].image)
                    res.status(200).send(results1)
                }
                catch(err) {
                    res.status(500).send(err)
                }
            })
        })
    }
}