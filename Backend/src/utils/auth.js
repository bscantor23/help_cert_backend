//Libraries
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");
const { v4: uuid } = require("uuid");

//Utils
const { clientRedis } = require("../resources/serviceFactory");
const responseHandling = require("../utils/responseHandling");

//Sistema de verificación con redis
const checkRedis = async (data) => {
  try {
    //Generar uuid
    const uuidGen = uuid();

    //Verifica si en el index de Redis hay una sesión activa
    await clientRedis.zrangebyscore("index", [`${data.id}`, `${data.id}`], (err, foundedData) => {
      if (foundedData.length != 0) {
        //Si exite, elimina el key y el registro en el index, esto para cerrar la sesión
        clientRedis.del(foundedData[0]);
        clientRedis.zrem("index", foundedData[0]);
      }
    });

    //Crear key con expiración de un día
    clientRedis.hmset(uuidGen, data);
    clientRedis.expire(uuidGen, process.env.TIME_KEYS_REDIS);

    //Crear el index con el id del usuario y por dentro, el uuid vinculado
    clientRedis.zadd("index", data.id, uuidGen);
    return uuidGen;
  } catch (error) {
    console.log(error);
    return responseHandling(res, 500, "ERR_SERVER", error);
  }
};

//Sistema de verificación de BasicAuth
const basicAuth = (auth) => {
  let basicB64 = auth.split(" ")[1];
  const buff = Buffer.from(basicB64, "base64");
  const basic = buff.toString("utf-8").split(":");
  return { email: basic[0], password: basic[1] };
};

//Sistema de generación de tokens
const generateToken = (uuidUser, token) => {
  const time = token == 1 ? `${process.env.TIME_TOKEN}m` : `${process.env.REFRESH_TIME}d`;
  return jwt.sign({ id: uuidUser }, token == 1 ? process.env.TOKEN_SECRET : process.env.REFRESH_TOKEN_SECRET, {
    expiresIn: time,
  });
};

//Sistema de cifrado de contraseñas con bcrypt
const encryptPassword = async (password) => {
  const salt = await bcrypt.genSalt(10);
  return bcrypt.hash(password, salt);
};

//Sistema de comparación de contraseñas con bcrypt
const compareCrypt = async (password, receivedPassword) => {
  return bcrypt.compare(password, receivedPassword);
};

//Sistema de control de seguridad de contraseñas
const checkPassword = (password) => {
  if (!/(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])^[\S]{8,21}$/gi.test(password)) {
    return {
      err: "WEAK_PASSWORD",
      msg: `Las creedenciales digitadas no cumplen con los requerimientos de seguridad, revisa la información nuevamente`,
    };
  }
};

module.exports = {
  checkRedis,
  basicAuth,
  generateToken,
  encryptPassword,
  compareCrypt,
  checkPassword,
};
