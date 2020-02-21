const express = require('express')
const { auth } = require('../helpers/auth')
const { postController } = require('../controllers')

const router = express.Router()

router.get('/getall', auth, postController.getAllPost)
router.get('/getallbyuserid', auth, postController.getAllPostByUserId)
router.get('/getallexplore', auth, postController.getAllPostExplore)
router.post('/addpost', auth, postController.addPost)
router.delete('/deletepost/:id', auth, postController.deletePost)
router.put('/editpost/:id', auth, postController.editPost)

module.exports = router