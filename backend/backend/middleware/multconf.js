const multer = require("multer");
const path = require("path");
const fs = require("fs");

// Ensure upload directories exist
const ensureDirExists = (dir) => {
  if (!fs.existsSync(dir)) {
    fs.mkdirSync(dir, { recursive: true });
  }
};

// Storage configuration
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    let uploadPath = "uploads/";

    if (file.fieldname === "profilePic") {
      uploadPath = "uploads/profilePics/";
    } else if (file.fieldname === "cv") {
      uploadPath = "uploads/cvs/";
    } else if (file.fieldname === "certification") {
      uploadPath = "uploads/certifications/";
    }

    ensureDirExists(uploadPath); // Ensure the directory exists before saving
    cb(null, uploadPath);
  },
  filename: (req, file, cb) => {
    cb(null, `${Date.now()}-${file.fieldname}${path.extname(file.originalname)}`);
  },
});

// File filter based on fieldname
const fileFilter = (req, file, cb) => {
  const allowedImageTypes = ["image/jpeg", "image/png"];
  const allowedDocTypes = ["application/pdf"];

  if (file.fieldname === "profilePic" && allowedImageTypes.includes(file.mimetype)) {
    cb(null, true);
  } else if ((file.fieldname === "cv" || file.fieldname === "certification") && allowedDocTypes.includes(file.mimetype)) {
    cb(null, true);
  } else {
    cb(new Error(`Unsupported file format for ${file.fieldname}`), false);
  }
};

const upload = multer({
  storage,
  limits: { fileSize: 5 * 1024 * 1024 }, // Limit file size to 5MB
  fileFilter,
});

module.exports = upload;

