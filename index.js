const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const bearerToken = require('express-bearer-token')

const app = express()
const port = process.env.PORT || 1997

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))
app.use(cors())
app.use(express.static('public'))
app.use(bearerToken())

app.get('/', (req,res) => {
    res.send('<h1>Selamat Datang di API Instagrin!</h1>')
})

const { userRouter, postRouter } = require('./routers')

app.use('/user', userRouter)
app.use('/post', postRouter)


app.listen(port, () => console.log(`API aktif di port ${port}`))
