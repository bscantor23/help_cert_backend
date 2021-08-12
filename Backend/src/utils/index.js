//Sistema de verificación de la estructura de los requests entrantes
const checkRequest = (req, structure) => {
  //Validación de cantidad y orden de propiedades entre objetos
  if (JSON.stringify(Object.getOwnPropertyNames(req)) != JSON.stringify(Object.getOwnPropertyNames(structure))) {
    return { err: "INVALID_REQUEST" };
  }
  for (let el in req) {
    //Validación de typeof de cada campo entrante
    if (typeof req[el] != structure[el]) {
      return {
        err: "INVALID_DATA",
        msg: `El valor ${req[el] ? `'${req[el]} '` : ''}de un campo digitado es distinto al solicitado, revisa la información nuevamente`,
      };
    }
    //Validación de SQL injections con regex
    if (/["'!¡*&/`;|=<>]|( or | OR )+/gi.test(req[el])) {
      return {
        err: "ALERT_INJECTION",
        msg: `El valor (${req[el]}) cuenta con valores o expresiones no permitidas en el sistema, revisa la información nuevamente`,
      };
    }
  }
};

//Sistema de verificación de roles en el sistema
const verifyRole = (role, authorizedRoles) => {
  let cont = authorizedRoles.length;
  while (cont-- > 0) {
    if (authorizedRoles[cont].id == role) {
      return authorizedRoles[cont].name;
    }
  }
};

//Sistema de generación de fecha y hora actual
const currentDate = () => {
  var today = new Date();
  var date = today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate();
  var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
  return date + " " + time;
};

module.exports = {
  checkRequest,
  currentDate,
  verifyRole,
};