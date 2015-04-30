var express = require('express');
var config = require('./config/config');

var app = express();

require('./config/express')(app, config, function () {
  require('./config/routes')(app);
  app.listen(config.port);
  console.log("> Application Running #", config.port);
});


