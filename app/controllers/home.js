var config = require(__dirname + "/../../config/config");
var constants = require(__dirname + "/../../config/constants");
var utils = require(__dirname + "/../../library/utils");

module.exports.index = function (req, res) {
  res.render('index', {
    nav: [
      {text: "Home", icon: "home", path: "/"},
      {text: "Login", icon: "log-in", path: "/login"}
    ]
  });
};

module.exports.login = function (req, res) {
  res.render('login', {
    nav: [
      {text: "Home", icon: "home", path: "/"},
      {text: "Sign-up", icon: "new-window", path: "/"}
    ]
  });
};

module.exports.dashboard = function (req, res) {
  var user = req.user;
  user.HOROSCOPE = constants.horoscopes[parseInt(user.HOROSCOPE)];
  user.RELIGION = constants.religions[parseInt(user.RELIGION)];

  res.render('dashboard', {
    nav: [
      {text: "Profile", icon: "user", path: "/dashboard"},
      {text: "Lookup", icon: "chevron-up", path: "/lookup"},
      {text: "Logout", icon: "log-out", path: "/logout"}
    ],
    user: user
  });
};

module.exports.lookup = function (req, res) {
  var user = req.user;

  utils.lookup(user, function (users) {
    var pend = users.length;
    for (var i = 0; i < users.length; i++) {
      utils.getAllDataWithProcedure(users[i].ID, function (data, index) {
        var jobs = [];
        for (var x = 0; x < data.returnParam3.length; x++) {
          jobs.push(data.returnParam3[x].JOB);
        }
        users[index].JOBS = jobs.join(", ");

        var universities = [];
        for (var y = 0; y < data.returnParam7.length; y++) {
          universities.push(data.returnParam7[y].UNIVERSITY_NAME);
        }
        users[index].UNIVERSITIES = universities.join(", ");

        var schools = [];
        for (var z = 0; z < data.returnParam5.length; z++) {
          schools.push(data.returnParam5[z].SCHOOL_NAME);
        }
        users[index].SCHOOLS = schools.join(", ");

        if (0 === --pend) {
          res.render('lookup', {
            nav: [
              {text: "Profile", icon: "user", path: "/dashboard"},
              {text: "Lookup", icon: "chevron-up", path: "/lookup"},
              {text: "Logout", icon: "log-out", path: "/logout"}
            ],
            users: users
          });
        }
      }, i);
    }

    if (users.length == 0) {
      res.render('lookup', {
        nav: [
          {text: "Profile", icon: "user", path: "/dashboard"},
          {text: "Lookup", icon: "chevron-up", path: "/lookup"},
          {text: "Logout", icon: "log-out", path: "/logout"}
        ],
        users: users
      });
    }
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
    } else {
    }
  });
  //
  res.clearCookie("token").redirect("/login");
};
