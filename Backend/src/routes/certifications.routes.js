//Libraries
const { Router } = require("express");
const router = Router();

//Controller
const certificationController = require("../controllers/certification.controller");

//Routes
router.post("/", certificationController); // (F)

module.exports = router;
