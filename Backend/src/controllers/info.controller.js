//Utils
const { roles } = require("../resources/serviceFactory");
const utils = require("../utils");

//Database Connection
const queries = require("../resources/queries/info");
const connect = require("../resources/connect");

//Response Management
const responseHandling = require("../utils/responseHandling");

//Request Management
const requestStructure = require("../resources/requests/info");

//Cards Logics
const cards = async (req, res) => {
  try {
    //Verificar si el usuario cuenta con los permisos
    const userRole = utils.verifyRole(req.session.role, roles);
    if (!userRole) {
      return responseHandling(
        res,
        403,
        "INVALID_PERMISSION",
        "El usuario no cuenta con los permisos necesarios para utilizar el servicio"
      );
    }

    //Validar el tipo de información que se dará como respuesta
    const query = userRole == "funct" ? queries.GET_NUM_CERT(req.session.id) : queries.GET_CARDS(req.session.company);

    //Conexión a base de datos
    connect(query, res, async (results) => {
      if (userRole == "funct") {
        results[0].certifications = results[0].certifications ? results[0].certifications : 0;
      }
      return responseHandling(res, 200, "INFO_CARDS", null, results);
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//Forms Logics
const forms = async (req, res) => {
  try {
    //Request Info
    let info = req.body;

    //Validar estructura del request
    const validRequest = utils.checkRequest(info, requestStructure.typeForm);
    if (validRequest) {
      return responseHandling(res, 404, validRequest.err, !validRequest.msg ? null : validRequest.msg);
    }

    //Validar el tipo de formulario solicitado
    if (info.form == "users" || info.form == "certifications" || info.form == "labors") {

      //Verificar si el usuario cuenta con los permisos
      const userRole = utils.verifyRole(req.session.role, roles);
      if (!userRole || (userRole == "funct" && info.form != "certifications")) {
        return responseHandling(res, 403, "INVALID_PERMISSION");
      }

      //Conexión a Base de datos
      connect(queries.GET_FORMS(info.form), res, async (results) => {
        let data = {};

        //Revisión y transformación de data entrante
        results.map((el) => {
          if (!data[!el.form ? info.form : el.form]) {
            data[!el.form ? info.form : el.form] = [];
          }

          const form = el.form;
          delete el.form;
          if (el.abbreviation == null) {
            delete el.abbreviation;
          }
          data[!form ? info.form : form].push(el);
        });

        return responseHandling(res, 200, "INFO_FORMS", null, data);
      });
    } else {
      return responseHandling(res, 403, "INVALID_PERMISSION");
    }
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//Contact Logics
const contact = async (req, res) => {
  try {
    return responseHandling(res, 404);
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

module.exports = { cards, forms, contact };
