//Libraries
const moment = require('moment');
const { v4: uuid } = require("uuid");

//utils
const utils = require('./');

//Sistema para conocer el término de ejecución del contrato
const checkTerm = (start, end) => {
  var admission = moment(start, 'YYYY-MM-DD');
  var discharge = moment(end, 'YYYY-MM-DD');

  var years = discharge.diff(admission, 'years');
  var months = discharge.diff(admission, 'months');

  admission.add(years, 'y');
  admission.add(months % 12, 'M');

  var days = discharge.diff(admission, 'days');

  years = years == 1 ? `${years} año` : years > 1 ? `${years} años` : ``;
  months = months % 12 == 1 ? `${months % 12} mes` : months % 12 > 1 ? `${months % 12} meses` : ``;
  days = days == 1 ? `${days} día` : days > 1 ? `${days} días` : ``;

  return (`${years} ${months} ${days}`);
}

const genInfo = (info) => {

  //Información necesaria para crear un otro sí, (term, path, dateTime)
  info.term = info.end_date != "" ? checkTerm(info.start_date, info.end_date) : "";
  info.path = info.path == 0 ? "" : (uuid() + ".pdf");
  info.dateTime = utils.currentDate();

  //Generar Código del amendment
  let date = new Date();
  info.generatedCode = `${date.getYear()}${(date.getMonth() + 1) / 10 < 1 ? 0 : ""}${date.getMonth() + 1}00`;
  return info;
}

module.exports = {
  checkTerm,
  genInfo
};
