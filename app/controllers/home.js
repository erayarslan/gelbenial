var config = require(__dirname + "/../../config/config");
var constants = require(__dirname + "/../../config/constants");

module.exports.index = function (req, res) {
  res.render('index', {
    nav : [
      { text: "Home", icon: "home", path: "/" },
      { text: "Login", icon: "log-in", path: "/login" }
    ]
  });
};

module.exports.login = function (req, res) {
  res.render('login', {
    nav : [
      { text: "Home", icon: "home", path: "/" },
      { text: "Sign-up", icon: "new-window", path: "/" }
    ]
  });
};

module.exports.dashboard = function (req, res) {
  var user = req.user;
  user.HOROSCOPE = constants.horoscopes[parseInt(user.HOROSCOPE)];
  user.RELIGION = constants.religions[parseInt(user.RELIGION)];

  res.render('dashboard', {
    nav : [
      { text: "Profile", icon: "user", path: "/dashboard" },
      { text: "Lookup", icon: "chevron-up", path: "/dashboard" },
      { text: "Logout", icon: "log-out", path: "/logout" }
    ],
    user : user
  });
};

module.exports.logout = function (req, res) {
  var token = req.cookies.token;
  //
  global.connection.execute("DELETE FROM tbl_tokens WHERE TOKEN = :1", [token || ""], function (err, results) {
    if (err) {
      response.status(500).send({
        error: err.message
      });
    } else {}
  });
  //
  res.clearCookie("token").redirect("/login");
};
