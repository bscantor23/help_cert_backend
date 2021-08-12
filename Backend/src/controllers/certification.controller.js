//Utils
const { roles } = require("../resources/serviceFactory");
const utils = require("../utils");

//Database Connection
const queries = require("../resources/queries/certifications");
const connect = require("../resources/connect");

//Response Management
const responseHandling = require("../utils/responseHandling");

//Request Management
const requestStructure = require("../resources/requests/certification");

//Certification Logics
const certification = async (req, res) => {
	try {
	} catch (error) {
		console.log("\n" + error);
		return responseHandling(res, 500, "ERR_SERVER", error);
	}
};

module.exports = certification;
