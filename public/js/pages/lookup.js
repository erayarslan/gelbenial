$(document).ready(function () {
  $.ajax({
    type: "GET",
    url: "api/users/friends",
    contentType: "application/json; charset=utf-8",
    dataType: "json",
    success: function (data) {
      for(var i = 0; i < data.result.length; i++) {
        $("button[target_id='" + data.result[i].FRIEND_ID + "'").button('loading');
        $("button[target_id='" + data.result[i].FRIEND_ID + "'").html("Done :)");
      }
    },
    error: function (err) {
    }
  });

  $(".add_button").click(function (e) {
    $.ajax({
      type: "POST",
      url: "api/users/friends",
      data: JSON.stringify({
        "FRIEND_ID": e.currentTarget.parentElement.parentElement.id
      }),
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      beforeSend: function () {
        $(e.currentTarget).button('loading');
      },
      success: function (data) {
        $(e.currentTarget).html("Done :)");
        $("#point").html(parseInt($("#point").html()) + 1);
      },
      error: function (err) {
        $(e.currentTarget).button('reset');
      }
    });
  });
});