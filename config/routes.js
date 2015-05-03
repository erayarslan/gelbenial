var home = require('../app/controllers/home');
var users = require('../app/controllers/ajax/users');
var utils = require('../library/utils');
//
module.exports = function (app) {
  // MAIN
  app.get('/', utils.isAuth, home.index);
  app.get('/login', utils.isAuth, home.login);
  app.get('/dashboard', utils.isSecure, home.dashboard);
  app.get('/lookup', utils.isSecure, home.lookup);
  app.get('/logout', home.logout);
  // AJAX
  app.post('/api/login', users.doLogin);
  app.get('/api/users', utils.secure, users.getAllUsers);
  app.post('/api/users', users.addUser);
  app.post('/api/users/data', utils.secure, users.saveAll);
  app.post('/api/users/friends', utils.secure, users.addFriend);
  app.get('/api/users/friends', utils.secure, users.getFriends);
  app.delete('/api/users/friends', utils.secure, users.removeFriend);
  app.get('/api/users/data', utils.secure, users.getAll);
};
