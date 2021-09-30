$(document).ready(function () {
  $('#login').on('click', function () {
    login();
  });
});

const login = () => {
  var loginUsername = $('#loginUsername').val();
  var loginPassword = $('#loginPassword').val();

  $.ajax({
    url: 'model/admin-login/check-login.php',
    method: 'POST',
    data: {
      loginUsername: loginUsername,
      loginPassword: loginPassword,
    },
    success: function (data) {
      $('#loginMessage').html(data);

      if (data.indexOf('Redirecting') >= 0) {
        window.location = 'admin-home.php';
      }
    },
  });
};
