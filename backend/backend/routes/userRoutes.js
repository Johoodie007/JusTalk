const express = require('express');
const { check, validationResult } = require('express-validator');
const { register, forgotPassword, upload } = require('../controllers/userController');
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
  (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    register(req, res);
  }
);

// @route   POST api/user/forgot-password
// @desc    Send password reset email
// @access  Public
router.post(
  '/forgot-password',
  [
    check('email', 'Please include a valid email').isEmail(),
  ],
  (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    forgotPassword(req, res);
  }
);

module.exports = router;