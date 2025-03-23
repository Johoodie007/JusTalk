
const multer = require('multer');

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, process.env.UPLOAD_DIR || 'uploads/');
  },
  filename: function (req, file, cb) {
    cb(null, `${Date.now()}-${file.original}`);
  },
});

module.exports = multer({ storage: storage });