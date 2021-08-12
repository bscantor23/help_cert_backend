//Libraries
const { Router } = require("express");
const router = Router();

//Middlewares
const { cache, authenticateRefresh } = require("../middlewares/tokenValidation");

//Controller
const authController = require("../controllers/auth.controller");

//Routes
router.post("/forget-password", authController.forgetPassword); // (F)
router.post("/signin", authController.signIn); // OK
router.post("/refresh-token",  [authenticateRefresh, cache], authController.refreshSession); // OK

module.exports = router;
