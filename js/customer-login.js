$(document).ready(function () {
  $('#customerLogin').on('click', function () {
    customerLogin();
  });
});

const customerLogin = () => {
  var customerLoginUsername = $('#customerLoginUsername').val();
  var customerLoginPassword = $('#customerLoginPassword').val();

  $.ajax({
    url: 'model/customer-login/check-login.php',
    method: 'POST',
    data: {
      customerLoginUsername,
      customerLoginPassword,
    },
    success: function (data) {
      $('#customerLoginMessage').html(data);

      if (data.indexOf('Redirecting') >= 0) {
        window.location = 'customer-home.php';
      }
    },
  });
};
