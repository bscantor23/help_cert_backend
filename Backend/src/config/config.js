module.exports = {
    database: process.env.CLEVER_CLOUD_URI_DB_HC,
    port: process.env.PORT_SERVER || 4000,
    secret_token: process.env.SECRET_TOKEN
};