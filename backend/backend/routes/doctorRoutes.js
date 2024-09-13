const express = require('express');
const { check, validationResult } = require('express-validator');
const { registerDoctor, loginDoctor, upload } = require('../controllers/doctorController');
const router = express.Router();

// @route   POST api/doctor/register
// @desc    Register doctor
// @access  Public
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
    await registerDoctor(req, res);
  }
);

// @route   POST api/doctor/login
// @desc    Login doctor
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
    await loginDoctor(req, res);
  }
);

module.exports = router;