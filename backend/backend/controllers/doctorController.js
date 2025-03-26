const { validationResult } = require('express-validator');
const Doctor = require('../models/doctorModel');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const nodemailer = require('nodemailer');
// Helper function to generate JWT token

const generateToken = (id, role) => {
  return jwt.sign({ id, role }, process.env.JWT_SECRET, {
    expiresIn: process.env.JWT_EXPIRE || '1h',
  });
};

exports.registerDoctor = async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }

  const { fullName, email, password } = req.body;

  try {
    let doctor = await Doctor.findOne({ email });
    if (doctor) {
      return res.status(400).json({ msg: 'Doctor with this email already exists' });
    }

    // No need to hash the password manually
    doctor = new Doctor({ fullName, email, password, role: 'Doctor' });

    await doctor.save(); // The password will be hashed automatically by the pre-save hook

    res.status(201).json({
      message: "Doctor registered successfully",
      token: generateToken(doctor.id, doctor.role),
    });

  } catch (err) {
    console.error(err.message);
    res.status(500).json({ msg: 'Server error' });
  }
};

exports.loginDoctor = async (req, res) => {
    try {
        // Find doctor by email
        const { email, password } = req.body;
        let doctor = await Doctor.findOne({ email });
        if (!doctor) {
            return res.status(400).json({ msg: 'Doctor not found' });
        }

        console.log("✅ Entered Password:", password);
        console.log("🔐 Stored Hashed Password:", doctor.password); // This should be hashed

        // Compare entered password with stored hash
        const isMatch = await bcrypt.compare(password, doctor.password); // No need to hash the entered password again
        console.log("⚡ Password Match:", isMatch);

        if (!isMatch) {
            return res.status(400).json({ msg: 'Incorrect password' });
        }

        // Generate a JWT token and send success message
        const token = generateToken(doctor.id, doctor.role);
        res.json({
            msg: 'Login successful',
            token: token,
        });

    } catch (err) {
        console.error(err.message);
        res.status(500).send('Server error');
    }
};

// Forgot Password for Doctor
exports.forgotPasswordDoctor = async (req, res) => {
  const { email } = req.body;

  try {
    const doctor = await Doctor.findOne({ email });
    if (!doctor) {
      return res.status(400).json({ msg: 'Doctor with this email does not exist' });
    }

    const resetToken = crypto.randomBytes(32).toString('hex');
    doctor.resetPasswordToken = resetToken;
    doctor.resetPasswordExpires = Date.now() + 3600000;
    await doctor.save();

    const transporter = nodemailer.createTransport({
      service: 'gmail',
      auth: {
        user: process.env.EMAIL_USER,
        pass: process.env.EMAIL_PASS,
      },
    });

    const resetLink = `${process.env.FRONTEND_URL}/reset-password/doctor/${resetToken}`;

    await transporter.sendMail({
      to: doctor.email,
      subject: 'Password Reset Request',
      html: `<p>Click <a href="${resetLink}">here</a> to reset your password.</p>`
    });

    res.json({ msg: 'Password reset link has been sent to your email.' });
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ msg: 'Server error' });
  }
};

// Reset Password for Doctor
 exports.resetPasswordDoctor = async (req, res) => {
  const { token, password } = req.body;

  try {
    const doctor = await Doctor.findOne({
      resetPasswordToken: token,
      resetPasswordExpires: { $gt: Date.now() },
    });

    if (!doctor) {
      return res.status(400).json({ msg: 'Invalid or expired token' });
    }

   const saltRounds = process.env.SALT_ROUNDS ? Number(process.env.SALT_ROUNDS) : 10;
    const salt = await bcrypt.genSalt(saltRounds);
     doctor.password = await bcrypt.hash(password, salt);


    doctor.resetPasswordToken = undefined;
    doctor.resetPasswordExpires = undefined;
    await doctor.save();

    res.json({ msg: 'Password successfully updated' });
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ msg: 'Server error' });
  }
};