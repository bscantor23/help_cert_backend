//Libraries
const { Router } = require("express");
const router = Router();

//Controller
const contractController = require("../controllers/contract.controller");

//Routes
router.post("/create", contractController.createMethod); //X
router.post("/:cod/file", contractController.saveFileMethod); //X
router.post("/:cod/amendments", contractController.amendmentMethod); //X
router.post("/", contractController.indexMethod); //X
router.get("/:cod", contractController.indexOfMethod); //X
router.put("/:cod/status", contractController.statusMethod); //X


module.exports = router;