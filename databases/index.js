const mysql = require('mysql')

const db = mysql.createConnection({
    host: 'localhost',
    user: '',
    password: '',
    database: 'instagrin',
    port: 3306,
})

module.exports = {
    sqlDB: db
}