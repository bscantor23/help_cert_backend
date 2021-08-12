//ServiceFactory
const { customeService } = require("../resources/serviceFactory");

//Middlewares
const { authenticateToken, cache } = require("../middlewares/tokenValidation");

module.exports = (app) => {
	app.use(`${customeService("auth")}`, require("./auth.routes")); // OK (2)
	app.use(`${customeService("info")}`, require("./info.routes")); // OK (2)
	app.use(`${customeService("certifications")}`, [authenticateToken, cache], require("./certifications.routes")); // F
	app.use(`${customeService("profile")}`, [authenticateToken, cache], require("./profiles.routes")); // X
	app.use(`${customeService("users")}`, [authenticateToken, cache], require("./users.routes")); // X
	app.use(`${customeService("jobfunctions")}`, [authenticateToken, cache], require("./jobfunctions.routes")); //X
	app.use(`${customeService("contracts")}`, [authenticateToken, cache], require("./contracts.routes")); //X
};
