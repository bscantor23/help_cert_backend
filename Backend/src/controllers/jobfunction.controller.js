//Utils
const { roles } = require("../resources/serviceFactory");
const utils = require("../utils");
var moment = require('moment');

//Database Connection
const queries = require("../resources/queries/jobfunctions");
const connect = require("../resources/connect");

//Response Handling
const responseHandling = require("../utils/responseHandling");
const requestStructure = require("../resources/requests/jobfunctions");

//CreateJob Logics X
const createMethod = async (req, res) => {
  try {
    //Request Info
    let info = req.body;
    info.company = Number(req.session.company);
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.createJob);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    info.dateTime = utils.currentDate();

    let date = new Date();
    info.generatedCode = `${date.getYear()}${(date.getMonth() + 1) / 10 < 1 ? 0 : ""}${date.getMonth() + 1}00`;

    //Conexión a base de datos
    connect(queries.CREATE_METH(info), res, (results) => {
      return results["affectedRows"] == 1
        ? responseHandling(res, 201, "CREATED_JOB", "creado")
        : responseHandling(res, 400, "ERR_CREATED_JOB");
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//IndexJobs Logics X
const indexMethod = async (req, res) => {
  try {
    //Request Info
    let info = req.body;
    info.company = Number(req.session.company);

    //Validar status válido
    if (info.status != 1 && info.status != 0) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.indexJobs);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    //Conexión a base de datos
    connect(queries.INDEX_METH(info), res, async (results) => {
      results.map((el, i) => {
        results[i].status = el.status == 1 ? "Activo" : "Inactivo";
      });

      return responseHandling(res, 200, "INFO_JOBS", null, results);
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//IndexOfJob Logics X
const indexOfMethod = async (req, res) => {
  try {
    //Request Info
    let info = {};
    info.code = Number.isNaN(Number(req.params.cod)) ? "" : Number(req.params.cod);
    info.company = Number(req.session.company);
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.indexOfJobs);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
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
    //Request Info
    let info = req.body;
    info.code = Number.isNaN(Number(req.params.cod)) ? "" : Number(req.params.cod);
    info.company = Number(req.session.company);
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.updateJob);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[1]]);
    if (!userRole) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    //Conexión a base de datos
    connect(queries.CHECK_CONTRACTS(info.code), res, async (contracts) => {
      //Validar si existen contratos vinculados al usuario

      const customCase = contracts[0].num != 0 ? 1 : 0;

      if (customCase == 1) {
        return responseHandling(
          res,
          403,
          "INVALID_PERMISSION",
          "El cargo ya cuenta con contratos vinculados, no es posible actualizarlo en el sistema"
        );
      }

      info.dateTime = utils.currentDate();

      //Conexión a base de datos
      connect(queries.UPDATE_METH(info), res, async (results) => {
        //Realizar la actualización
        return results["affectedRows"] == 1
          ? responseHandling(res, 201, "UPDATED_JOB", "actualizado")
          : responseHandling(res, 403, "INVALID_PERMISSION");
      });
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//StatusJob Logics X
const statusMethod = async (req, res) => {
  try {
    //Request Info
    let info = {};
    info.code = Number.isNaN(Number(req.params.cod)) ? "" : Number(req.params.cod);
    info.company = Number(req.session.company);
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.checkJob);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[1]]);
    if (!userRole) {
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

//DeleteJob Logics X
const deleteMethod = async (req, res) => {
  try {
    //Request Info
    let info = {};
    info.code = Number.isNaN(Number(req.params.cod)) ? "" : Number(req.params.cod);
    info.company = Number(req.session.company);
    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.checkJob);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, [roles[1]]);
    if (!userRole) {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }

    //Conexión a base de datos
    connect(queries.CHECK_CONTRACTS(info.code), res, async (contracts) => {
      //Validar si existen contratos vinculados al usuario
      const customCase = contracts[0].num != 0 ? 1 : 0;

      if (customCase == 1) {
        return responseHandling(
          res,
          403,
          "INVALID_PERMISSION",
          "El cargo ya cuenta con contratos vinculados, no es posible eliminarlo del sistema"
        );
      }

      //Conexión a base de datos
      connect(queries.DELETE_METH(info), res, async (results) => {
        //Realizar la actualización
        return results["affectedRows"] == 1 
        ? responseHandling(res, 204) 
        : responseHandling(res, 403, "INVALID_PERMISSION");
      });
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

module.exports = { createMethod, indexMethod, indexOfMethod, updateMethod, statusMethod, deleteMethod };
