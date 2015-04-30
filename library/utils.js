var oracle = require('oracle');
var conn = global.connection;

module.exports = {
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
  getAllDataWithProcedure: function (id, callback) {
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
      callback(results);
    });
  }
};
