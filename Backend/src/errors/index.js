const HandleErrors = (error) => {
  let message = "Hubo un error en nuestros servicios";
  let status = 500;
  let field;

  switch (error.code) {
    case "ER_BAD_FIELD_ERROR":
      message = "Query error, revisa los campos nuevamente";
      break;
    case "ER_PARSE_ERROR":
      message = "Query Sintax error, revisa la información nuevamente";
      break;
    case "ER_WARN_DATA_OUT_OF_RANGE":
    case "ER_DATA_TOO_LONG":
      status = 400;
      field = error.sqlMessage.split("'")[1];
      message = `El valor del campo '${field}' superó el rango permitido de caracteres, revisa la información nuevamente`;
      break;
    case "ER_DUP_ENTRY":
      status = 400;
      field = error.sqlMessage.split("'").reverse()[1];
      message = `El valor del campo '${field}' ya se encuentra registrado en el sistema, revisa la información nuevamente`;
      break;
    case "ER_ROW_IS_REFERENCED":
      status = 400;
      message = "No cuentas con los permisos suficientes para eliminar el registro, revisa nuevamente";
      break;
    case "ER_NO_REFERENCED_ROW":
      status = 404;
      message = "Un campo digitado no existe en el sistema, revisa la información nuevamente";
      break;
  }

  return { status, code: error.code, message };
};

module.exports = HandleErrors;
