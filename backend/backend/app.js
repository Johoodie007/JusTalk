const express = require('express');
const connectDB = require('./config/db');
const bodyParser = require('body-parser');
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');
require('dotenv').config();

const app = express();

// Connect Database
connectDB().catch(err => {
  console.error('Failed to connect to the database', err);
  process.exit(1);
});

// Init Middleware
app.use(express.json({ extended: false }));
app.use(helmet());
app.use(rateLimit({ windowMs: 15 * 60 * 1000, max: 100 }));

// Define Routes
app.use('/api/user', require('./routes/userRoutes'));
app.use('/api/doctor', require('./routes/doctorRoutes'));

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Server started on port ${PORT}`);
});