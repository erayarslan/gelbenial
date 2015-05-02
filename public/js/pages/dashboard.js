$(document).ready(function () {
  $("#save_all").show();
  //
  $(window).bind('beforeunload', function(e){
    /* saveAll(); */
  });
  //
  var jobs = $("#jobs").tagging();
  var universities = $("#universities").tagging();
  var schools = $("#schools").tagging();
  var movies = $("#movies").tagging();
  var artists = $("#artists").tagging();
  var hobbies = $("#hobbies").tagging();
  var skills = $("#skills").tagging();
  var words = $("#words").tagging();
  //
  jobs[0].addClass("form-control");
  universities[0].addClass("form-control");
  schools[0].addClass("form-control");
  movies[0].addClass("form-control");
  artists[0].addClass("form-control");
  hobbies[0].addClass("form-control");
  skills[0].addClass("form-control");
  words[0].addClass("form-control");

  $(".type-zone")[0].focus();
  //
  $.ajax({
    type: "GET",
    url: "api/users/data",
    dataType: "json",
    beforeSend: function () {
    },
    success: function (data) {
      for (var i = 0; i < data.returnParam.length; i++) {
        artists[0].tagging("add", data.returnParam[i].ARTIST_NAME);
      }
      //
      for (var i = 0; i < data.returnParam1.length; i++) {
        hobbies[0].tagging("add", data.returnParam1[i].HOBBY);
      }
      //
      for (var i = 0; i < data.returnParam2.length; i++) {
        if (data.returnParam2[i].SEX.toString() === "0") {
          $("#female").attr("checked", true);
        }
        if (data.returnParam2[i].SEX.toString() === "1") {
          $("#male").attr("checked", true);
        }
      }
      //
      for (var i = 0; i < data.returnParam3.length; i++) {
        jobs[0].tagging("add", data.returnParam3[i].JOB);
      }
      //
      for (var i = 0; i < data.returnParam4.length; i++) {
        movies[0].tagging("add", data.returnParam4[i].MOVIE_TITLE);
      }
      //
      for (var i = 0; i < data.returnParam5.length; i++) {
        schools[0].tagging("add", data.returnParam5[i].SCHOOL_NAME);
      }
      //
      for (var i = 0; i < data.returnParam6.length; i++) {
        skills[0].tagging("add", data.returnParam6[i].SKILL);
      }
      //
      for (var i = 0; i < data.returnParam7.length; i++) {
        universities[0].tagging("add", data.returnParam7[i].UNIVERSITY_NAME);
      }
      //
      for (var i = 0; i < data.returnParam8.length; i++) {
        words[0].tagging("add", data.returnParam8[i].WORD);
      }
    },
    error: function (err) {

    }
  });
  //
  var saveAll = function() {
    var sex = [];

    if ($("#male").is(":checked")) {
      sex.push("1");
    }

    if ($("#female").is(":checked")) {
      sex.push("0");
    }

    $.ajax({
      type: "POST",
      url: "api/users/data",
      data: JSON.stringify({
        jobs: jobs[0].tagging("getTags"),
        universities: universities[0].tagging("getTags"),
        schools: schools[0].tagging("getTags"),
        movies: movies[0].tagging("getTags"),
        artists: artists[0].tagging("getTags"),
        hobbies: hobbies[0].tagging("getTags"),
        skills: skills[0].tagging("getTags"),
        hope: sex,
        words: words[0].tagging("getTags")
      }),
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      beforeSend: function () {
        $("#save_all").hide();
      },
      success: function (data) {
        $("#save_all").show();
      },
      error: function (err) {
        $("#save_all").show();
      }
    });
  };
  //
  $("#save_all").click(function () {
    saveAll();
  });
});
