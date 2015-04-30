var path = require('path');
var rootPath = path.normalize(__dirname + '/..');
var constants = require('./constants');

var config = {
  root: rootPath,
  app: {
    name: constants.name
  },
  port: constants.port,
  db: {
    hostname: constants.db.hostname,
    port: constants.db.port,
    database: constants.db.database,
    user: constants.db.user,
    password: constants.db.password
  }
};

module.exports = config;
