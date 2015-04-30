$(document).ready(function () {
  $("#sign_up").submit(function (event) {
    $.ajax({
      type: "POST",
      url: "api/users",
      data: JSON.stringify({
        "USERNAME": $("#input_username").val(),
        "PASSWORD": $("#input_password").val(),
        "NAME": $("#input_name").val(),
        "BIRTHDAY": $("#input_birthday").val(),
        "SEX": $("#input_sex").val(),
        "LOCATION": $("#input_location").val(),
        "HOROSCOPE": $("#input_horoscope").val(),
        "RELIGION": $("#input_religion").val(),
        "POLITICS": $("#input_politics").val(),
        "ABOUT": $("#input_about").val()
      }),
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      beforeSend: function () {
        $("#ok_button").button('loading');
      },
      success: function (data) {
        $("#sign_up_success").html('<div class="alert alert-success" role="alert">Done! Wait 3 sec...</div>');
        //
        setTimeout(function () {
          window.location.href = "login";
        }, 3000);
      },
      error: function (err) {
        $("#ok_button").button('reset');
        //
        $("#error_area").html('<div class="col-sm-12"><div class="alert alert-danger alert-error"><a href="#" class="close" data-dismiss="alert">&times;</a> <strong>Error!</strong> <span>' + err.responseJSON.error + '</span> </div> </div>');
      }
    });
    event.preventDefault();
  });
});
