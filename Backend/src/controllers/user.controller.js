//Libraries
const { v4: uuid } = require("uuid");
var moment = require('moment');

//Utils
const { roles } = require("../resources/serviceFactory");
const utils = require("../utils");
const utilsAuth = require("../utils/auth");

//Database Connection
const queries = require("../resources/queries/users");
const connect = require("../resources/connect");

//Response Handling
const responseHandling = require("../utils/responseHandling");
const requestStructure = require("../resources/requests/users");

//CreateUser Logics X
const createMethod = async (req, res) => {
  try {
    let info = req.body;
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.createUser);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[0], roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    info.dateTime = utils.currentDate();
    const password = `${info.lastnames.toUpperCase().substr(0, 1)}${uuid().split("-")[0]}#`;

    console.log(password);
    info.password = await utilsAuth.encryptPassword(password);

    //Verificar si le está permitido crear el nuevo usuario
    const userCreated = utils.verifyRole(info.fk_role, roles);
    if ((userRole == "team" && userCreated != "funct") || (userRole == "admin" && userCreated != "team")) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    info.status = userCreated == "funct" ? 0 : 1;

    //Conexión a base de datos
    connect(queries.CREATE_METH(info), res, (results) => {
      return results["affectedRows"] == 1
        ? responseHandling(res, 201, "CREATED_USER", "creado")
        : responseHandling(res, 400, "ERR_CREATED_USER");
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//IndexUsers Logics X
const indexMethod = async (req, res) => {
  try {
    let info = req.body;
    info.company = Number(req.session.company);

    //Validar status válido
    if (info.status != 1 && info.status != 0) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.indexUsers);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[0], roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    //Verificar si le está permitido visualizar el grupo de usuarios
    const usersView = utils.verifyRole(info.role, [roles[1], roles[2]]);
    if (!usersView || (userRole == "team" && usersView == "team")) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    //Conexión a base de datos
    connect(queries.INDEX_METH(info), res, async (results) => {
      results.map((el, i) => {
        results[i].status = el.status == 1 ? "Activo" : "Inactivo";
      });

      return responseHandling(res, 200, "INFO_USERS", null, results);
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//IndexOfUser Logics X
const indexOfMethod = async (req, res) => {
  try {
    let info = {};
    info.id = Number.isNaN(Number(req.params.id)) ? "" : Number(req.params.id);

    info.role = req.body.role;
    info.company = Number(req.session.company);
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.indexOfUsers);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[0], roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    //Verificar si le está permitido visualizar la información del usuario
    const usersView = utils.verifyRole(info.role, [roles[1], roles[2]]);
    if (!usersView || (userRole == "team" && usersView == "team")) {
      return responseHandling(res, 403, "ERR_INFO_USER");
    }

    //Conexión a base de datos
    connect(queries.INDEX_OF_METH(info), res, async (results) => {
      if (results.length == 0) {
        return responseHandling(res, 404, "ERR_INFO_USER", null);
      }

      results[0].status = results[0].status == 1 ? "Activo" : "Inactivo";
      results[0].updated_at = moment(results[0].updated_at).format('YYYY-MM-DD HH:mm:ss');
      results[0].created_at = moment(results[0].created_at).format('YYYY-MM-DD HH:mm:ss');

      return responseHandling(res, 200, "INFO_USER", null, results);
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//UpdateUser Logics X
const updateMethod = async (req, res) => {
  try {
    let info = req.body;
    info.id = Number.isNaN(Number(req.params.id)) ? "" : Number(req.params.id);
    info.company = Number(req.session.company);
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.updateUsers);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[0], roles[1]]);
    if (!userRole) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    //Verificar si le está permitido actualizar la información del usuario
    const usersView = utils.verifyRole(info.role, [roles[1], roles[2]]);

    if (!usersView || (userRole == "team" && usersView == "team") || (userRole == "admin" && usersView == "funct")) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    //Conexión a base de datos
    connect(queries.CHECK_CONTRACTS(info.id), res, async (contracts) => {
      //Validar si existen contratos vinculados al usuario
      const customCase = contracts[0].num != 0 ? 1 : 0;

      info.dateTime = utils.currentDate();

      //Conexión a base de datos
      connect(queries.UPDATE_METH(info, customCase), res, async (results) => {
        //Realizar la actualización
        return results["affectedRows"] == 1
          ? responseHandling(res, 201, "UPDATED_USER", "actualizado")
          : responseHandling(res, 403, "INVALID_PERMISSION");
      });
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//StatusUser Logics X
const statusMethod = async (req, res) => {
  try {
    let info = req.body;
    info.id = Number.isNaN(Number(req.params.id)) ? "" : Number(req.params.id);
    info.company = Number(req.session.company);
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.checkUser);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[0], roles[1]]);
    if (!userRole) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    //Verificar si le está permitido actualizar la información del usuario
    const usersView = utils.verifyRole(info.role, [roles[1], roles[2]]);

    if (!usersView || (userRole == "team" && usersView == "team") || (userRole == "admin" && usersView == "funct")) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    info.dateTime = utils.currentDate();

    //Conexión a base de datos
    connect(queries.UPDATE_STATUS(info), res, async (results) => {
      return results["affectedRows"] == 1
        ? responseHandling(res, 201, "UPDATED_STATUS", "actualizado")
        : responseHandling(res, 403, "INVALID_PERMISSION");
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//DeleteUser Logics X
const deleteMethod = async (req, res) => {
  try {
    let info = {};
    info.id = Number.isNaN(Number(req.params.id)) ? "" : Number(req.params.id);
    info.company = Number(req.session.company);
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.deleteUser);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[0], roles[1]]);
    if (!userRole) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    //Conexión a base de datos
    connect(queries.CHECK_CONTRACTS(info.id), res, async (contracts) => {
      //Validar si existen contratos vinculados al usuario
      const customCase = contracts[0].num != 0 ? 1 : 0;

      if (customCase == 1) {
        return responseHandling(
          res,
          403,
          "INVALID_PERMISSION",
          "El funcionario ya cuenta con contratos vinculados, no es posible eliminarlo del sistema"
        );
      }

      //Conexión a base de datos
      connect(queries.DELETE_METH(info), res, async (results) => {
        //Realizar la actualización
        return results["affectedRows"] == 1 ? responseHandling(res, 204) : responseHandling(res, 403, "INVALID_PERMISSION");
      });
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

module.exports = { createMethod, indexMethod, indexOfMethod, updateMethod, statusMethod, deleteMethod };
