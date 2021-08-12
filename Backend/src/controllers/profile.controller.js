//Utils
const { roles } = require("../resources/serviceFactory");
const utils = require("../utils");
const utilsAuth = require("../utils/auth");
var moment = require('moment');

//Database Connection
const queries = require("../resources/queries/profiles");
const connect = require("../resources/connect");

//Response Management
const responseHandling = require("../utils/responseHandling");

//Request Management
const requestStructure = require("../resources/requests/profiles");

//Profile Logics X
const profile = async (req, res) => {
  try {
    //Conexión a base de datos
    connect(queries.GET_PROFILE(req.session.id), res, async (results) => {

      if (results.length == 0) {
        return responseHandling(res, 404, "ERR_PROFILE", null);
      }

      results[0].updated_at = moment(results[0].updated_at).format('YYYY-MM-DD HH:mm:ss');
      results[0].created_at = moment(results[0].created_at).format('YYYY-MM-DD HH:mm:ss');

      return responseHandling(res, 200, "INFO_PROFILE", null, results);
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//UpdateProfile Logics X
const updateProfile = async (req, res) => {
  try {
    let info = req.body;
    info.id = Number(req.session.id);
    info.role = Number(req.session.role);

    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.updateProfile);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    info.dateTime = utils.currentDate();
    //Conexión a base de datos
    connect(queries.UPDATE_PROFILE(info), res, async (results) => {
      //Realizar la actualización
      return results["affectedRows"] == 1
        ? responseHandling(res, 201, "UPDATED_PROFILE", "actualizado")
        : responseHandling(res, 400, "ERR_PROFILE");
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//Credentials Logics X
const credentials = async (req, res) => {
  try {
    let info = req.body;
    //Validar diferencia entre contraseñas
    if (info.oldPassword == info.newPassword) {
      return responseHandling(
        res,
        400,
        "SAME_VALUES",
        "Las creedenciales digitadas son iguales, revisa la información nuevamente"
      );
    }

    //Validar estructura del request
    const validRequest = utils.checkRequest(req.body, requestStructure.credentials);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    info.id = req.session.id;
    info.dateTime = utils.currentDate();
    connect(queries.GET_CREDENTIALS(info.id), res, async (cred) => {
      let matchPassword = await utilsAuth.compareCrypt(info.oldPassword, cred[0].password);

      if (!matchPassword) {
        return res.status(401).json({
          code: "INVALID_LOGIN",
          message: `Credenciales inválidas`,
        });
      }

      //Validar el nivel de seguridad de la contraseña
      const validPassword = utilsAuth.checkPassword(info.newPassword);

      if (validPassword) {
        return res.status(400).json({
          code: validPassword.err,
          message: validPassword.msg,
        });
      }

      info.newPassword = await utilsAuth.encryptPassword(info.newPassword);

      connect(queries.PUT_CREDENTIALS(info), res, (results) => {
        return results["affectedRows"] == 1
          ? responseHandling(res, 201, "CHANGE_CREDENTIALS", "actualizado")
          : responseHandling(res, 400, "ERR_CHANGE_CREDENTIALS");
      });
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};


module.exports = { profile, updateProfile, credentials };
