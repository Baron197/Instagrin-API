const express = require('express')
const { auth } = require('../helpers/auth')
const { userController } = require('../controllers')

const router = express.Router()

router.post('/register', userController.register)
router.post('/keeplogin', auth, userController.keepLogin)
router.post('/login', userController.login)
router.put('/editprofiledata', auth, userController.editProfileData)
router.put('/editprofileimage',auth, userController.editProfileImage)

module.exports = router