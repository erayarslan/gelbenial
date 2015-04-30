$(document).ready(function () {
  $("#save_all").show();
  //
  var jobs = $("#jobs").tagging();
  //
  var universities = $("#universities").tagging();
  var schools = $("#schools").tagging();
  //
  var movies = $("#movies").tagging();
  var artists = $("#artists").tagging();
  var hobbies = $("#hobbies").tagging();
  var skills = $("#skills").tagging();

  jobs[0].addClass("form-control");
  //
  universities[0].addClass("form-control");
  schools[0].addClass("form-control");
  //
  movies[0].addClass("form-control");
  artists[0].addClass("form-control");
  hobbies[0].addClass("form-control");
  skills[0].addClass("form-control");

  $(".type-zone")[0].focus();
  //
  $.ajax({
    type: "GET",
    url: "api/users/data",
    dataType: "json",
    beforeSend: function() {
    },
    success: function(data){
      console.log(data);
    },
    error: function(err) {
    }
  });
  //
  $("#save_all").click(function() {
    $.ajax({
      type: "POST",
      url: "api/users/data",
      data: JSON.stringify({
        jobs : jobs[0].tagging( "getTags" ),
        universities : universities[0].tagging( "getTags" ),
        schools : schools[0].tagging( "getTags" ),
        movies : movies[0].tagging( "getTags" ),
        artists : artists[0].tagging( "getTags" ),
        hobbies : hobbies[0].tagging( "getTags" ),
        skills : skills[0].tagging( "getTags" )
      }),
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      beforeSend: function() {
        $("#save_all").hide();
      },
      success: function(data){
        $("#save_all").show();
      },
      error: function(err) {
        $("#save_all").show();
      }
    });
  });
});
