const { content } = require("./styles");

function generateContent(variables) {
  const content = [
    {
      text: `${variables.ciudad_institucion}, ${variables.em_mes} ${variables.em_dia} de ${variables.em_anio}`, style: 'date',
    },
    {
      text: `Certificado No. ${variables.id_certificado}`, style:'numCert'
    },
    {
      image: __dirname + '/assets/logo.PNG', alignment: 'center', width: 100
    },
    {
      stack: [ variables.institucion_denominacion, variables.nombre_institucion], style: 'header'
    },
    {
      text: "CERTIFICA:", style: 'contentBody', bold: true, margin: [0, 30, 0, 0]
    },
    {
      text: [
        `Que ${variables.genero === `M` ? `el señor,`: `la señora,`}`, { text: `${variables.nombres.toUpperCase()} ${variables.apellidos.toUpperCase()}`, bold: true },
        `${variables.genero === `M` ? `identificado,`: `identificada`} con `, { text: variables.nombre_documento, bold: true },` No. `, { text: variables.numero_documento, bold: true },
        `de `, { text: variables.ciudad, bold: true },
        `labora con el `, { text: variables.institucion_denominacion, bold: true },
        `, desde `, { text: `${variables.fecha_inicio} hasta ${variables.fecha_final}`, bold: true },
        `, desempeñando el cargo de `, { text: variables.cargo, bold: true },
        ` con un contrato de `, { text: variables.contrato_labor, bold: true },`${variables.salario ? ' y devengando un salario mensual de ' : '.'}`, { text: variables.salario ? "$"+variables.salario : ` pesos.`, bold: true }
      ], style: 'contentBody', margin: [0, 30, 0, 20]
    },
    variables.obligaciones_especificas ? 
    {
      text: `Además, en concordancia a la solicitud, las funciones desempeñadas se describen a continuación: `, style: 'contentBody', margin: [0, 0, 0, 20]
    } : {},
    variables.obligaciones_especificas ? 
    {
      text: variables.obligaciones_especificas, style: 'contentBody'
    } : {},
    {
      text: `Para constancia de lo anterior se firma en ${variables.ciudad_institucion} ${variables.em_dia_letters == `primer` ? `al primer` : `a los ${variables.em_dia_letters}`} (${variables.em_dia}) ${variables.em_dia == 1 ? `día` : `días`} del mes de ${variables.em_mes} del año ${variables.em_anio_letters} (${variables.em_anio}).`, style: 'contentBody', margin: [0, 20, 0, 0]
    },
    {
      text: `Cordialmente,`, style: 'contentBody', margin: [0, 30, 0, 0]
    },
    {
      image: __dirname + '/assets/firma.PNG', height: 110, width: 340
    }
  ]

  return content;
}


module.exports = { generateContent }