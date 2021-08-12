//SQL errors management
const HandleErrors = require("../errors");

//Database Connection
const connection = require("../config/database");

//Responses Management
const responseHandling = require("../utils/responseHandling");

//Conexión a Base de datos
const connect = (query, res, callback) => {
	try {
		connection.query(query, function (err, rows, fields) {
			if (err) {
				console.log("\nSQL ERROR: " + err.sqlMessage);
				const { status, code, message } = HandleErrors(err);
				return responseHandling(res, status, code, message);
			}
      //Parse de resultados de la query
			callback(rows[0] ? Object.values(JSON.parse(JSON.stringify(rows))) : JSON.parse(JSON.stringify(rows)));
		});
	} catch (error) {
		console.log("\n" + error);
		return responseHandling(res, 500, "ERR_SERVER", error);
	}
};

module.exports = connect;
