$(document).ready(function() {
  $("#sign_in").submit(function (event) {
    $.ajax({
      type: "POST",
      url: "api/login",
      data: JSON.stringify({
        "USERNAME": $("#input_username").val(),
        "PASSWORD": $("#input_password").val()
      }),
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      beforeSend: function () {
        $("#ok_button").button('loading');
      },
      success: function (data) {
        $("#sign_in_success").html('<div class="alert alert-success" role="alert">Done! Wait a sec...</div>');
        //
        setTimeout(function () {
          window.location.href = "/dashboard";
        }, 1000);
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
