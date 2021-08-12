const PdfPrinter = require('pdfmake');
const fs = require("fs");

const Roboto = require("./Roboto");
const styles = require("./styles");
const { generateContent } = require("./pdfContent");
const { getMonthLetters, getYearLetters, getDayLetters } = require('../../utils/data_processing');

module.exports = (variables) => {

  let today = new Date();

  let dateInicio = new Date(variables.fecha_inicio);
  dateInicio = getMonthLetters(dateInicio.getMonth() + 1) + " " + (dateInicio.getDay().toString().length == 1 ? "0" + dateInicio.getDay() : dateFinal.getDay()) + " de " + dateInicio.getFullYear();

  let dateFinal = new Date(variables.fecha_final);
  dateFinal = getMonthLetters(dateFinal.getMonth() + 1) + " " + (dateFinal.getDay().toString().length == 1 ? "0" + dateFinal.getDay() : dateFinal.getDay()) + " de " + dateFinal.getFullYear();

  variables.fecha_inicio = dateInicio;
  variables.fecha_final = dateFinal;

  variables.em_dia = today.getDate();
  variables.em_dia_letters = getDayLetters(today.getDate()) == "un" ? "primer" : getDayLetters(today.getDate());
  variables.em_mes = getMonthLetters(today.getMonth() + 1);
  variables.em_anio = today.getFullYear();
  variables.em_anio_letters = getYearLetters(today.getFullYear());

  let docDefinition = {
    pageMargins: [80, 60, 90, 90],
    background: {
      image: __dirname + '/assets/normas.PNG', absolutePosition: { x: 520, y: 660 }, height: 140, width: 60
    },
    footer: {
      image: __dirname + '/assets/pie_pagina.PNG', alignment: 'center', height: 70, width: 450, margin: [0, 0, 0, 10]
    },
    content: generateContent(variables),
    styles
  }

  const printer = new PdfPrinter(Roboto);
  let pdfDoc = printer.createPdfKitDocument(docDefinition);

  pdfDoc.pipe(fs.createWriteStream(`src/public/certificados/${variables.nameDoc}.pdf`));
  pdfDoc.end();
}
