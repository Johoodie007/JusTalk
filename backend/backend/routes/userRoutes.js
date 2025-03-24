const express = require('express');
const { check, validationResult } = require('express-validator');
const { registerUser, loginUser, forgotPassword, resetPassword } = require('../controllers/userController');
const router = express.Router();

// Register User
router.post(
  '/register',
  [
    check('fullName', 'Full Name is required').not().isEmpty(),
    check('email', 'Please include a valid email').isEmail(),
    check('password', 'Please enter a password with 6 or more characters').isLength({ min: 6 }),
  ],
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    try {
      await registerUser(req, res);
    } catch (err) {
      console.error(err.message);
      res.status(500).json({ msg: 'Server error' });
    }
  }
);

// Login User
router.post(
  '/login',
  [
    check('email', 'Please include a valid email').isEmail(),
    check('password', 'Password is required').exists(),
  ],
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    try {
      await loginUser(req, res);
    } catch (err) {
      console.error(err.message);
      res.status(500).json({ msg: 'Server error' });
    }
  }
);


// Route for User forgot password
router.post('/forgot-password', [
  check('email', 'Please include a valid email').isEmail()
], forgotPasswordUser);

// Route for User reset password
router.post('/reset-password', [
  check('token', 'Token is required').not().isEmpty(),
  check('password', 'Password must be at least 6 characters').isLength({ min: 6 })
], resetPasswordUser);

module.exports = router;
