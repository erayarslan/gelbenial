var oracle = require('oracle');
var conn = global.connection;

var utils = {
  secure: function (request, response, next) {
    conn.execute("SELECT * FROM tbl_tokens WHERE TOKEN = :1", [request.cookies.token || request.headers.token || ""], function (err, results) {
      if (err) {
        response.status(500).send({
          error: err.message
        });
      } else {
        if (results.length != 1) {
          response.status(500).send({
            error: "Token Not Found"
          });
        } else {
          conn.execute("SELECT * FROM tbl_users WHERE ID = :1",
            [
              results[0].USER_ID
            ], function (err, results) {
              if (err) {
                response.status(500).send({
                  error: err.message
                });
              } else {
                request.user = results[0];
                next();
              }
            });
        }
      }
    });
  },
  isAuth: function (request, response, next) {
    conn.execute("SELECT * FROM tbl_tokens WHERE TOKEN = :1", [request.cookies.token || request.headers.token || ""], function (err, results) {
      if (err) {
        response.status(500).send({
          error: err.message
        });
      } else {
        if (results.length != 1) {
          next();
        } else {
          response.redirect("/dashboard");
        }
      }
    });
  },
  isSecure: function (request, response, next) {
    conn.execute("SELECT * FROM tbl_tokens WHERE TOKEN = :1", [request.cookies.token || request.headers.token || ""], function (err, results) {
      if (err) {
        response.status(500).send({
          error: err.message
        });
      } else {
        if (results.length != 1) {
          response.redirect("/logout");
        } else {
          conn.execute("SELECT * FROM tbl_users WHERE ID = :1",
            [
              results[0].USER_ID
            ], function (err, results) {
              if (err) {
                response.status(500).send({
                  error: err.message
                });
              } else {
                request.user = results[0];
                next();
              }
            });
        }
      }
    });
  },
  saveData: function (table, key, id, data, callback) {
    if (data[table].length > 0) {
      var pend = data[table].length;

      for (var index = 0; index < data[table].length; index++) {
        conn.execute("INSERT INTO tbl_" + table + " (user_id, " + key + ") VALUES " + "(" + id + ", '" + data[table][index] + "')",
          [], function (err, results) {
            if (err) {
              console.log(err);
            }
          });

        if (0 === --pend) {
          callback();
        }
      }
    } else {
      callback();
    }
  },
  deleteAllData: function (data, id, callback) {
    var pend = 0;
    for (var key in data) {
      if (data.hasOwnProperty(key)) {
        pend++;
      }
    }

    for (var key in data) {
      conn.execute("DELETE FROM tbl_" + key + " WHERE user_id = " + id, [], function (err, results) {
        if (0 === --pend) {
          callback();
        }
      });
    }
  },
  deleteAllDataWithProcedure: function (id, callback) {
    conn.execute("call DELETEALLDATABYUSERID(:1)", [id], function (err, results) {
      callback();
    });
  },
  getAllDataWithProcedure: function (id, callback, index) {
    conn.execute("call GETALLDATA(:1, :2, :3, :4, :5, :6, :7, :8, :9, :10)", [
      id,
      new oracle.OutParam(oracle.OCCICURSOR),
      new oracle.OutParam(oracle.OCCICURSOR),
      new oracle.OutParam(oracle.OCCICURSOR),
      new oracle.OutParam(oracle.OCCICURSOR),
      new oracle.OutParam(oracle.OCCICURSOR),
      new oracle.OutParam(oracle.OCCICURSOR),
      new oracle.OutParam(oracle.OCCICURSOR),
      new oracle.OutParam(oracle.OCCICURSOR),
      new oracle.OutParam(oracle.OCCICURSOR)
    ], function (err, results) {
      if (typeof index !== "undefined") {
        callback(results, index);
      } else {
        callback(results);
      }
    });
  },
  lookup: function (user, callback) {
    utils.getAllDataWithProcedure(user.ID, function (data) {
      var info = {
        user: user,
        artists: data.returnParam,
        hobbies: data.returnParam1,
        hope: data.returnParam2,
        jobs: data.returnParam3,
        movies: data.returnParam4,
        schools: data.returnParam5,
        skills: data.returnParam6,
        universities: data.returnParam7,
        words: data.returnParam8
      };

      var userBirthYear = parseInt(info.user.BIRTHDAY.split("-")[0]);

      var hopeSql = "";
      if (info.hope.length == 2) {
        hopeSql = "select * from tbl_users";
      } else if (info.hope.length == 0) {
        callback([]);
        return;
      } else {
        hopeSql = "select * from tbl_users where sex = " + info.hope[0].SEX;
      }
      conn.execute(hopeSql, [], function (err, hopeUsers) {
        for (var i = 0; i < hopeUsers.length; i++) {
          var targetBirthYear = parseInt(hopeUsers[i].BIRTHDAY.split("-")[0]);
          var targetId = hopeUsers[i].ID;
          var targetLocation = hopeUsers[i].LOCATION;
          if (!(userBirthYear - 1 <= targetBirthYear && userBirthYear + 1 >= targetBirthYear) || targetId == info.user.ID || targetLocation !== info.user.LOCATION) {
            hopeUsers.splice(i--, 1);
          }
        }
        callback(hopeUsers);
      });
    });
  },
  getFriendList: function (id, callback) {
    conn.execute(
      "SELECT * FROM tbl_friends WHERE user_id = :1",
      [
        id
      ], function (err, friends_results) {
        var str = "";
        for (var i = 0; i < friends_results.length; i++) {
          if(i == friends_results.length - 1) {
            str += friends_results[i].FRIEND_ID;
          } else {
            str += friends_results[i].FRIEND_ID + ",";
          }
        }

        conn.execute(
          "SELECT * FROM tbl_users WHERE id in (" + str +")",
          [], function (err, users_results) {
            callback(users_results);
          }
        );
      }
    );
  }
};

module.exports = utils;