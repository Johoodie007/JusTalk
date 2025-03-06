const express = require('express');
const { check, validationResult } = require('express-validator');
const { registerUser, loginUser, forgotPassword } = require('../controllers/userController');
const router = express.Router();

// @route   POST api/user/register
// @desc    Register user
// @access  Public
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

// @route   POST api/user/login
// @desc    Login user
// @access  Public
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

// @route   POST api/user/forgot-password
// @desc    Forgot password
// @access  Public
// Add your forgot password logic here

module.exports = router;