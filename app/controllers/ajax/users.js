var randomToken = require('rand-token');
var md5 = require('MD5');
var conn = global.connection;
var utils = require('../../../library/utils');

module.exports.doLogin = function (request, response) {
  var loginInfo = request.body;

  conn.execute("SELECT * FROM tbl_users WHERE USERNAME = :1 AND PASSWORD = :2",
    [
      loginInfo.USERNAME || "",
      md5(loginInfo.PASSWORD || "")
    ], function (err, results) {
      if (err) {
        response.status(500).send({
          error: err.message
        });
      }

      if (results.length != 1) {
        response.status(500).send({
          error: "User Not Found"
        });
      }
      else {
        var user_id = results[0].ID;

        var generatedToken = randomToken.generate(32);
        var sql = "INSERT INTO tbl_tokens (USER_ID, TOKEN) VALUES (:1, :2)";

        conn.execute(sql,
          [
            user_id || "",
            generatedToken || ""
          ], function (err, results) {
            if (err) {
              response.status(500).send({
                error: err.message
              });
            }
            response.status(200).cookie("token", generatedToken).send({
              result: {
                token: generatedToken
              }
            });
          });
      }
    });
};

module.exports.getAllUsers = function (request, response) {
  conn.execute("SELECT * FROM tbl_users",
    [], function (err, results) {
      if (err) {
        response.status(500).send({
          error: err.message
        });
      }
      response.status(200).send({
        result: results
      });
    });
};

module.exports.addUser = function (request, response) {
  var user = request.body;

  conn.execute(
    "INSERT INTO tbl_users (USERNAME, PASSWORD, NAME, BIRTHDAY, SEX, LOCATION, HOROSCOPE, RELIGION, POLITICS, ABOUT) VALUES (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10)",
    [
      user.USERNAME || "",
      md5(user.PASSWORD || ""),
      user.NAME || "",
      user.BIRTHDAY || "",
      user.SEX || "",
      user.LOCATION || "",
      user.HOROSCOPE || "",
      user.RELIGION || "",
      user.POLITICS || "",
      user.ABOUT || ""
    ], function (err, results) {
      if (err) {
        response.status(500).send({
          error: err.message
        });
      }
      response.status(200).send({
        result: results
      });
    }
  );
};

module.exports.saveAll = function (request, response) {
  var data = request.body;
  utils.deleteAllDataWithProcedure(request.user.ID, function() {
    utils.saveData("jobs", "job", request.user.ID, data, function () {
      utils.saveData("universities", "university_name", request.user.ID, data, function () {
        utils.saveData("schools", "school_name", request.user.ID, data, function () {
          utils.saveData("movies", "movie_title", request.user.ID, data, function () {
            utils.saveData("artists", "artist_name", request.user.ID, data, function () {
              utils.saveData("hobbies", "hobby", request.user.ID, data, function () {
                utils.saveData("skills", "skill", request.user.ID, data, function () {
                  utils.saveData("words", "word", request.user.ID, data, function () {
                    utils.saveData("hope", "sex", request.user.ID, data, function () {
                      response.status(200).send();
                    });
                  });
                });
              });
            });
          });
        });
      });
    });
  });
};

module.exports.getAll = function (request, response) {
  utils.getAllDataWithProcedure(request.user.ID, function(data) {
    response.status(200).send(data);
  });
};
