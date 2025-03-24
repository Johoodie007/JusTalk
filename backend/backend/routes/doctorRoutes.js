const express = require('express');
const { check, validationResult } = require('express-validator');
const { registerDoctor, loginDoctor, forgotPassword, resetPassword } = require('../controllers/doctorController');
const router = express.Router();
const upload = require('../middleware/multconf');

// Register Doctor
router.post(
  '/register',
  upload.fields([{ name: 'cv', maxCount: 1 }, { name: 'certification', maxCount: 1 }]),
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
      await registerDoctor(req, res);
    } catch (err) {
      console.error(err.message);
      res.status(500).json({ msg: 'Server error' });
    }
  }
);

// Login Doctor
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
      await loginDoctor(req, res);
    } catch (err) {
      console.error(err.message);
      res.status(500).json({ msg: 'Server error' });
    }
  }
);

// Route for Doctor forgot password
router.post('/forgot-password', [
  check('email', 'Please include a valid email').isEmail()
], forgotPasswordDoctor);

// Route for Doctor reset password
router.post('/reset-password', [
  check('token', 'Token is required').not().isEmpty(),
  check('password', 'Password must be at least 6 characters').isLength({ min: 6 })
], resetPasswordDoctor);

module.exports = router;
