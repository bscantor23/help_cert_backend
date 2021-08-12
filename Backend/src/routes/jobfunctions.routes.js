//Libraries
const { Router } = require("express");
const router = Router();

//Controller
const jobFunctionController = require("../controllers/jobfunction.controller");

//Routes
router.post("/create", jobFunctionController.createMethod);
router.post("/", jobFunctionController.indexMethod);
router.get("/:cod", jobFunctionController.indexOfMethod);
router.put("/:cod", jobFunctionController.updateMethod);
router.put(":cod/status", jobFunctionController.statusMethod);
router.delete(":cod", jobFunctionController.deleteMethod);

module.exports = router;
