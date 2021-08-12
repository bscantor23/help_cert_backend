var multer = require("multer");
const path = require("path");

const responseHandling = require("../utils/responseHandling");

//Database Connection
const queries = require("../resources/queries/contracts");
const connect = require("../resources/connect");


const upload = (reqRoute, resRoute, nextRoute) => {

  const nameFile = reqRoute.body.path;
  const info = reqRoute.body.info

  const uploadMulter = multer({
    storage: multer.diskStorage({
      destination: function (req, file, cb) {
        cb(null, "./src/public/contracts/");
      },
      filename: function (req, file, cb) {
        return cb(null, nameFile);
      },
    }),
    fileFilter: function (req, file, cb) {
      if (path.extname(file.originalname) !== ".pdf") {
        return cb(new Error().message = { code: "ERR_UPLOAD", msg: "El archivo importado debe ser de extensión PDF, revisa nuevamente" });
      } else {
        return cb(null, true);
      }
    },
    onError: function (err, next) {
      return responseHandling(res, 500, null, err)
    },
  }).single("contractFile");

  uploadMulter(reqRoute, resRoute, function (err) {
    if (err) {
      return responseHandling(resRoute, 500, err.code, err.msg);
    }
    //Conexión a base de datos (Actualizar contrato)
    connect(queries.UPDATE_DATE(info), resRoute, (update) => {
      return update["affectedRows"] == 1
        ? responseHandling(resRoute, 201, "CREATED_FILE", "actualizado")
        : responseHandling(resRoute, 400, "ERR_CREATED_AMENDMENT");
    });

  });
}

module.exports = upload;
