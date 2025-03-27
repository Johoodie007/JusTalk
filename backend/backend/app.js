
require('dotenv').config({ path: '../port.env' });  // Load the port.env file from the root directory
const cors = require('cors');
const path = require('path');
const doctorRoutes = require('./routes/doctorRoutes');
const userRoutes = require('./routes/userRoutes');

console.log(process.env);

const express = require('express');
const connectDB = require('./config/db');  // Connect MongoDB
const bodyParser = require('body-parser');
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');

// Initialize express app
const app = express();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));


// Serve profile images statically
app.use("/uploads", express.static(path.join(__dirname, "uploads")));

// Connect to MongoDB database
connectDB().catch(err => {
  console.error('Failed to connect to the database', err);
  process.exit(1);
});

// Init Middleware
app.use(express.json({ extended: false }));  // For JSON request bodies
app.use(helmet());  // Secure HTTP headers
app.use(rateLimit({ windowMs: 15 * 60 * 1000, max: 100 }));  // Prevent DDOS (rate limit)
// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: "Something went wrong!" });
});

// Define Routes
app.use('/api/user', require('./routes/userRoutes'));
app.use('/api/doctor', require('./routes/doctorRoutes'));
app.use('/api', doctorRoutes);
app.use('/api', userRoutes);


// Get the port from environment variables or default to 5000
const PORT = process.env.PORT || 5000;
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server started on port ${PORT}`);
});
