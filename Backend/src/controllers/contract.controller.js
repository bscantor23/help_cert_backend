//Libraries
const fs = require('fs');
const path = require("path");
var moment = require('moment');

//Utils
const { roles } = require("../resources/serviceFactory");
const utils = require("../utils");
const contractUtils = require("../utils/contract");

//Database Connection
const queries = require("../resources/queries/contracts");
const connect = require("../resources/connect");

//Response Management
const responseHandling = require("../utils/responseHandling");

//Request Management
const requestStructure = require("../resources/requests/contract");

//Multer Middleware
const upload = require("../middlewares/upload");

//CreateContract Logics
const createMethod = async (req, res) => {
  try {
    //Request Info
    let info = req.body;

    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.createContract);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Validar si las fechas son correctas
    if (moment(info.end_date).diff(moment(info.start_date), 'days') < 1) {
      return responseHandling(res, 400, "ERR_DATES", "Las fechas digitadas no corresponden a un término de ejecución válido, revisa nuevamente la información");
    }

    //Verificar si el usuario es TeamController
    const userRole = utils.verifyRole(req.session.role, [roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    //Generar información necesaria para la creación del contrato
    info = contractUtils.genInfo(info);

    //Conexión a base de datos (Crear Contrato)
    connect(queries.CREATE_METH(info), res, (results) => {
      return results["affectedRows"] == 1
        ? responseHandling(res, 201, "CREATED_CONTRACT", "creado")
        : responseHandling(res, 400, "ERR_CREATED_CONTRACT");
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//SaveFile Logics
const saveFileMethod = async (req, res, next) => {
  try {
    //Request Info
    let info = {};
    info.code = Number.isNaN(Number(req.params.cod)) ? "" : Number(req.params.cod);
    info.company = Number(req.session.company);

    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.saveFile);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario es TeamController
    const userRole = utils.verifyRole(req.session.role, [roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    //Conexión a base de datos (Traer path_file de Contrato)
    connect(queries.GET_PATH(info, 0), res, (results) => {
      if (!results[0]) {
        return responseHandling(res, 404, "ERR_SAVE_PATH");
      }

      //Validar si el archivo existe
      if (!fs.existsSync(path.join(__dirname, `../public/contracts/${results[0].file_path}`))) {
        req.body.path = results[0].file_path;
        info.dateTime = utils.currentDate();
        req.body.info = info;
        return upload(req, res, next);
      }

      //Format Timestamp
      info.updated_at = moment(results[0].updated_at).format('YYYY-MM-DD HH:mm:ss');

      //Conexión a base de Datos (Traer path_file de Otro sí)
      connect(queries.GET_PATH(info, 1), res, (amendment) => {

        if (!amendment[0] || !amendment[0].file_path) {
          return responseHandling(res, 404, "FILE_EXISTS");
        }
        //Validar si el archivo existe
        if (fs.existsSync(path.join(__dirname, `../public/contracts/${amendment[0].file_path}`))) {
          return responseHandling(res, 200, "FILE_EXISTS");
        }

        req.body.path = amendment[0].file_path;
        info.dateTime = utils.currentDate();
        req.body.info = info;
        return upload(req, res, next);
      });
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//CreateAmendment Logics
const amendmentMethod = async (req, res) => {
  try {
    //Request Info
    let info = req.body;
    info.code = Number.isNaN(Number(req.params.cod)) ? "" : Number(req.params.cod);
    info.company = Number(req.session.company);

    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.createAmendment);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario es TeamController
    const userRole = utils.verifyRole(req.session.role, [roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    //Verifica si existe algún otro sí para el contrato
    if (!info.functions && !info.end_date && !info.remarks && info.path == 0) {
      return responseHandling(res, 400,
        "ERR_CREATED_AMEND",
        "No hay un registro necesario de datos para crear un nuevo otro sí, revisa nuevamente la información");
    }

    //Conexión a Base de datos (Traer Contrato)
    connect(queries.INDEX_OF_METH(info), res, (contract) => {
      if (!contract[0]) {
        return responseHandling(res, 404, "ERR_INFO_CONTRACT", null)
      }

      //Validar si las fechas son correctas
      if (moment(info.end_date).diff(moment(contract[0].end_date), 'days') < 1) {
        return responseHandling(res, 400, "ERR_DATES", "La fecha de terminación de contrato es menor a la ya ingresada, revisa nuevamente la información");
      }

      //Generar información necesaria para la creación del contrato
      info.start_date = contract[0].start_date;
      info = contractUtils.genInfo(info);

      info.dateTime = utils.currentDate();

      //Conexión a base de datos (Crear otro sí)
      connect(queries.CREATE_AMEND(info), res, (results) => {
        if (results["affectedRows"] != 1) {
          return responseHandling(res, 400, "ERR_CREATED_AMENDMENT");
        }

        //Conexión a base de datos (Actualizar contrato)
        connect(queries.UPDATE_DATE(info), res, (update) => {
          return update["affectedRows"] == 1
            ? responseHandling(res, 201, "CREATED_AMENDMENT", "creado")
            : responseHandling(res, 400, "ERR_CREATED_AMENDMENT");
        });
      });
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//IndexContracts Logics
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
    const validRequest = utils.checkRequest(info, requestStructure.indexContracts);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario es TeamController
    const userRole = utils.verifyRole(req.session.role, [roles[0], roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    //Conexión a base de datos (Traer Contratos)
    connect(queries.INDEX_METH(info), res, async (results) => {
      results.map((el, i) => {
        results[i].end_date = moment(results[i].end_date).format('YYYY-MM-DD');
        results[i].start_date = moment(results[i].start_date).format('YYYY-MM-DD');
      });

      return responseHandling(res, 200, "INFO_CONTRACTS", null, results);
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//IndexOfContract Logics
const indexOfMethod = async (req, res) => {
  try {
    //Request Info
    let info = {};
    info.code = Number.isNaN(Number(req.params.cod)) ? "" : Number(req.params.cod);
    info.company = Number(req.session.company);

    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.indexOfContract);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Verificar si el usuario es TeamController
    const userRole = utils.verifyRole(req.session.role, [roles[0], roles[1]]);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    //Conexión a base de datos (Traer Contrato)
    connect(queries.INDEX_OF_METH(info), res, async (original) => {
      if (!original[0]) {
        return responseHandling(res, 404, "ERR_INFO_CONTRACT", null)
      }
      //Transformación de Data
      original[0].status = original[0].status == 1 ? "Activo" : "Inactivo";
      original[0].end_date = moment(original[0].end_date).format('YYYY-MM-DD');
      original[0].start_date = moment(original[0].start_date).format('YYYY-MM-DD');
      original[0].updated_at = moment(original[0].updated_at).format('YYYY-MM-DD HH:mm:ss');
      original[0].created_at = moment(original[0].created_at).format('YYYY-MM-DD HH:mm:ss');


      //Conexión a base de datos (Traer otros sí del contrato)
      connect(queries.GET_AMENDMENTS(info), res, async (amendments) => {
        //Transformación de Data
        amendments.map((el, i) => {
          amendments[i].end_date = moment(amendments[i].end_date).format('YYYY-MM-DD');
          amendments[i].created_at = moment(amendments[i].created_at).format('YYYY-MM-DD HH:mm:ss');
        });

        return responseHandling(res, 200, "INFO_CONTRACT", null, { original: original[0], amendments });
      });
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//StatusContract Logics
const statusMethod = async (req, res) => {
  try {
    //Request Info
    let info = req.body;
    info.code = Number.isNaN(Number(req.params.cod)) ? "" : Number(req.params.cod);

    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.statusContract);
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

module.exports = {
  createMethod,
  amendmentMethod,
  saveFileMethod,
  indexMethod,
  indexOfMethod,
  statusMethod,
};
