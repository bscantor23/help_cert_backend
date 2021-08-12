//Libraries
const { Router } = require("express");
const router = Router();

//Middlewares
const { authenticateToken, cache } = require("../middlewares/tokenValidation");

//Controller
const infoController = require("../controllers/info.controller");

//Routes
router.get("/cards", [authenticateToken, cache], infoController.cards); //OK
router.post("/forms", [authenticateToken, cache], infoController.forms); //OK
router.get("/contact", infoController.contact); //(F)

module.exports = router;
