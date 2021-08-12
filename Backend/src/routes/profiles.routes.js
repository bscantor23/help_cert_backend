//Libraries
const { Router } = require("express");
const router = Router();

//Controller
const profileController = require("../controllers/profile.controller");

//Routes
router.get("/", profileController.profile); //X
router.put("/credentials", profileController.credentials); //X
router.put("/update", profileController.updateProfile); //X

module.exports = router;
