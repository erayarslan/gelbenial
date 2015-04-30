var express = require('express');
var oracle = require('oracle');

module.exports = function (app, config, callback) {
  app.configure(function () {
    app.set('views', config.root + '/app/views');
    app.set('view engine', 'ejs');
    app.use(express.compress());
    app.set('port', config.port);
    app.use(express.bodyParser());
    app.use(express.cookieParser());
    app.use(express.static(config.root + '/public'));
    app.use(app.router);
    //
    oracle.connect(config.db, function (err, conn) {
      if (err) {
        throw err;
      } else {
        console.log("> Database Connection Done :)");
      }
      conn.setAutoCommit(true);
      global.connection = conn;
      //
      callback();
    });
  });
};
