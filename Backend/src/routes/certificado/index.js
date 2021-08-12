const { HandlerErrors } = require('../../errors/index.js');

const base64 = require('js-base64');
const { Router } = require('express');
const router = Router();

const generatePdf = require('../../utils/certificados/app');
const connection = require('../../config/database');

let data, typeQuery;

//Funcional
router.post('/:id_contrato', async (req, res) => {

  const { id_contrato } = req.params;
  const { tipo_certificado, salario } = req.body;

  //Validación de req body
  if (!(/(funciones|laboral)/g).test(tipo_certificado) || typeof salario != "boolean") {
    return res.status(400).send({ message: "Creedenciales inválidas" })
  }

  //Traer información del contrato del Funcionario
  const query1 = `SELECT usuarios.nombres, usuarios.apellidos, tipo_documentos.nombre_documento, instituciones.ciudad_institucion, ` +
    `usuarios.numero_documento, ${salario ? ` contratos.salario,` : ``} contratos.contrato_labor, contratos.fecha_inicio, contratos.fecha_final, ` +
    `contratos.termino_ejecucion, usuarios.cargo, instituciones.institucion_denominacion, instituciones.nombre_institucion, contratos.id_contrato, ` +
    `contratos.numero_contrato, usuarios.ciudad, usuarios.genero ${tipo_certificado === "funciones" ? `,tipo_contratos.obligaciones_especificas ` : ``}` +
    `FROM usuarios ` +
    `INNER JOIN tipo_documentos on tipo_documentos.id_tipo_documento = usuarios.fk_tipo_documento ` +
    `INNER JOIN contratos on contratos.fk_funcionario = usuarios.id_usuario ` +
    `INNER JOIN tipo_contratos on tipo_contratos.id_tipo_contrato = contratos.fk_tipo_contrato ` +
    `INNER JOIN instituciones on contratos.fk_institucion = instituciones.id_institucion ` +
    `WHERE contratos.id_contrato = ${id_contrato} limit 1`;

  connection.query(query1, function (err, rows, fields) {
    if (err) {
      const { message, status } = HandlerErrors(err);
      return res.status(status).send({ message });
    }

    //Si no se encontró información, contrato inválido.
    if (!rows[0]) { return res.status(400).send({ message: "Contrato Inválido" }) }

    //Guardar información en variable global
    data = rows[0];
    //Encode nombre del archivo
    data.nameDoc = base64.encode(rows[0].numero_documento + "helpCert" + rows[0].numero_contrato + (rows[0].obligaciones_especificas ? "funciones" : "laboral")).replace('=', "hC8DA");

    //Búsqueda de archivo existente en las bases de datos
    const query2 = `SELECT * FROM certificados WHERE ruta_archivo = "/public/certicados/${data.nameDoc}.pdf"`;

    connection.query(query2, function (err, rows, fields) {
      if (err) {
        const { message, status } = HandlerErrors(err);
        return res.status(status).send({ message });
      }

      //Establecer Fecha y Hora Actual
      var today = new Date();
      var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
      var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
      var dateTime = date + ' ' + time;
      let dateCert;

      //Si se encontró evidencia de existencia del archivo en la Base de Datos
      if (rows[0]) {
        //Reconozca el momento de creación del archivo
        dateCert = new Date(rows[0].created_at);
        dateCert = dateCert.getFullYear() + '-' + (dateCert.getMonth() + 1) + '-' + dateCert.getDate();
      }

      //Si las fechas de creación y solicitud son del mismo día, actualice el registro, 
      //sinó, cree uno nuevo
      const query3 = dateCert == date ? `UPDATE certificados SET salario=${data.salario ? 1 : 0},` +
        `generate_cont=generate_cont + 1, updated_at="${dateTime}" WHERE ruta_archivo = "/public/certicados/${data.nameDoc}.pdf"` :
        `INSERT INTO certificados (id_certificado,fk_contrato,ruta_archivo,salario, generate_cont, tipo_certificado, created_at,updated_at) ` +
        `VALUES ((${today.getFullYear()}${(today.getMonth() + 1)/3}1 + (SELECT COUNT(*) FROM (SELECT * FROM certificados) AS C))` +
        `,${data.id_contrato},"/public/certicados/${data.nameDoc}.pdf",${data.salario ? 1 : 0},` +
        `1,${data.obligaciones_especificas ? `"funciones"` : `"laboral"`}, "${dateTime}","${dateTime}")`;

      //Si incluye la palabra insert, bool=true
      typeQuery = query3.includes("INSERT") ? true : false;

      //Si es INSERT inicialicelo en 0, si nó, tome el id_certificado, autoincreméntelo y guardelo.
      data.id_certificado = typeQuery ? 0 : rows[0].id_certificado + 1; 

      connection.query(query3, function (err, rows, fields) {
        if (err) {
          const { message, status } = HandlerErrors(err);
          return res.status(status).send({ message });
        }

        //Si anteriormente el id_certificado es 0 (INSERT), guarde el nuevo id creado
        data.id_certificado = data.id_certificado == 0 ? rows.insertId : data.id_certificado;

        //Genere el pdf con la data info generada
        generatePdf(data);

        //Si typeQuery es true (INSERT) ó false (UPDATE)
        return res.send({ message: typeQuery ? "Se creó un nuevo certificado en la base de datos" : "Se actualizó un certificado en la base de datos" });
      });
    })
  })
})

module.exports = router;