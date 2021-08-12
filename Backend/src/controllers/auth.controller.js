//Utils
const utils = require("../utils/auth");

//Database Connection
const queries = require("../resources/queries/auth");
const connect = require("../resources/connect");

//Responses Management
const responseHandling = require("../utils/responseHandling");

//LogIn Logics 
const signIn = async (req, res) => {
  //Headers
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Credentials", true);
  res.setHeader("Content-Type", "application/json");

  try {
    //Validar BasicAuth
    let auth = req.headers["authorization"];
    if (!auth || !auth.includes("Basic")) {
      return responseHandling(res, 401, "INVALID_AUTH");
    }

    //Obtener el email y password del BasicAuth
    const info = utils.basicAuth(auth);

    //Conexión Base de Datos (Session Info)
    connect(queries.SIGN_IN(info), res, async (results) => {

      //Comparar contraseñas bcrypt
      const matchPassword = results[0] ? await utils.compareCrypt(info.password, results[0].password) : null;

      //Verificar las creedenciales del usuario
      if (!results[0] || !matchPassword) {
        return res.status(401).json({
          code: "INVALID_LOGIN",
          message: `Credenciales inválidas, revisa tu ${!results[0] ? "email" : "contraseña"} nuevamente`,
        });
      }

      //Verificar el status del usuario
      if (results[0].status != 1) {
        return res.status(401).json({
          code: "INVALID_STATUS",
          message: `No cuenta con permisos para acceder a la plataforma, comuniquese con su institución`,
        });
      }

      //Sistema de Caché de Redis
      const uuid = await utils.checkRedis({ id: results[0].id, role: results[0].fk_role, company: results[0].fk_company });

      //Generar Tokens
      const refreshToken = await utils.generateToken(uuid, 0);
      const accessToken = await utils.generateToken(uuid, 1);

      return res.status(200).json({
        code: "VALID_LOGIN",
        message: "¡Autenticación válida! Bienvenido a Help_Cert",
        tokens: {
          refreshToken,
          accessToken,
        },
        data: results[0],
      });
    });
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//RefreshToken Logics
const refreshSession = async (req, res) => {
  try {
    //Generar un nuevo accessToken a partir del uuid del refreshToken
    const accessToken = await utils.generateToken(req.uuid, 1);

    return res.status(200).json({
      code: "VALID_REFRESH",
      accessToken
    });

  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//Forget Password Logics
const forgetPassword = async (req, res) => {
  try {
    return responseHandling(res, 404);
  } catch (error) {
    console.log("\n" + error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

module.exports = { signIn, refreshSession, forgetPassword };
