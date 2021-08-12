const responseHandling = (res, status, code, msg, data) => {
	switch (status) {
		case 200:
			msg = msg ? msg : "La solicitud ha tenido éxito";
			break;
		case 201:
			msg = `Se ha ${msg} un nuevo registro en el sistema`;
			break;
		case 204:
			msg = `Se ha eliminado un registro en el sistema`;
			break;

		case 400:
			msg = msg ? msg : "La solicitud no culminó satisfactoriamente";
			break;
		case 401:
			msg = msg ? msg : "La solicitud no cuenta con una autorización válida";
			break;
		case 403:
			msg = msg ? msg : "La solicitud no cuenta con un permiso válido para continuar";
			break;
		case 404:
			msg = msg ? msg : "La solicitud no logró encontrar el contenido solicitado";
			break;
		case 408:
			msg = msg ? msg : "Conexión inactiva en nuestros servidores";
			break;

		case 500:
			msg = msg ? msg : "Error interno del servidor";
			break;
		case 502:
			msg = msg ? msg : "Error interno con respecto a respuesta inválida";
			break;
		case 503:
			msg = msg ? msg : "Error interno con respecto al tiempo de respuesta";
			break;
	}

	return res.status(status).send({ code, message: msg, data });
};

module.exports = responseHandling;
