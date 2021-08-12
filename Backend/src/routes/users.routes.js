//Libraries
const { Router } = require("express");
const router = Router();

//Controller
const userController = require("../controllers/user.controller");

//Routes
router.post("/create", userController.createMethod); // X
router.post("/", userController.indexMethod); // X
router.post("/:id", userController.indexOfMethod); // X
router.put("/:id", userController.updateMethod); // X
router.put("/:id/Status", userController.statusMethod); // X
router.delete("/:id", userController.deleteMethod); // X

module.exports = router;
