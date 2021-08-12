//Libraries
const jwt = require("jsonwebtoken");

//ClientRedis
const { clientRedis } = require("../resources/serviceFactory");

//Database Connection
const queries = require("../resources/queries/auth");
const connect = require("../resources/connect");

//Responses Management
const responseHandling = require("../utils/responseHandling");

const authenticateToken = function (req, res, next) {
	try {
		//Validación de Bearer Token
		const authHeader = req.headers["authorization"];
		let token = authHeader && authHeader.split(" ")[1];
		if (token == null) return responseHandling(res, 401);

		//Verificar el accesToken
		jwt.verify(token, process.env.TOKEN_SECRET, function (err, results) {
			if (err) {
				if (err["expiredAt"]) {
					return responseHandling(res, 403, "ERR_EXPIRATE_TOKEN");
				}
				return responseHandling(res, 403, "ERR_VERIFY_TOKEN");
			}
			req.uuid = results.id;
			next();
		});
	} catch (error) {
		console.log("\n" + error);
		return responseHandling(res, 500, "ERR_SERVER", error);
	}
};

const authenticateRefresh = function (req, res, next) {
	try {
		//Validación de Bearer Token
		const authHeader = req.headers["authorization"];
		let token = authHeader && authHeader.split(" ")[1];
		if (token == null) return responseHandling(res, 401);

		//Verificar el accesToken
		jwt.verify(token, process.env.REFRESH_TOKEN_SECRET, function (err, results) {
			if (err) {
				if (err["expiredAt"]) {
					return responseHandling(res, 403, "ERR_EXPIRATE_TOKEN");
				}
				return responseHandling(res, 403, "ERR_VERIFY_TOKEN");
			}
			req.uuid = results.id;
			next();
		});
	} catch (error) {
		console.log("\n" + error);
		return responseHandling(res, 500, "ERR_SERVER", error);
	}
};

const cache = function (req, res, next) {
	try {
    //Búsqueda de la información de la sesión en redis de acuerdo al uuid del token
		clientRedis.hgetall(req.uuid, (err, data) => {
      //Error en redis
			if (err) {
        console.log("\nREDIS ERROR: " + err.message);
				const { status, code, message } = HandleErrors(err.code);
				return responseHandling(res, status, code, message);
			}
			if (data) {
				req.session = data;

				//Validar status del usuario
				connect(queries.CHECK_STATUS(req.session.id), res, (results) => {
					if (results[0].status != 1) {
						return responseHandling(
							res,
							403,
							"INVALID_STATUS",
							"No cuenta con los permisos suficientes para acceder a la plataforma, comuniquese con su institución"
						);
					}
					next();
				});
			} else {
				return responseHandling(res, 403, "SESSION_NOT_FOUND","Inicia sesión nuevamente en el sistema para continuar");
			}
		});
	} catch (error) {
		console.log("\n" + error);
		return responseHandling(res, 500, "ERR_SERVER", error);
	}
};

module.exports = { authenticateToken, authenticateRefresh, cache };
