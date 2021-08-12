const mysql = require('mysql');
const { database } = require('./config');
const connection = mysql.createPool(database)

module.exports = connection;
