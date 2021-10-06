<?php
session_start();

if (isset($_SESSION['customerLoggedIn'])) {
  header('Location: customer-home.php');
  exit();
}

require_once('inc/config/constants.php');
require_once('inc/config/db.php');
require_once('template/admin/header.html');
?>

<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-12 col-md-5 col-lg-5">
        <div class="card">
          <div class="card-header">
            Customer Login
          </div>
          <div class="card-body">
            <form action="">
              <div id="customerLoginMessage"></div>
              <div class="form-group">
                <label for="customerLoginUsername">Username</label>
                <input type="text" class="form-control" id="customerLoginUsername" name="customerLoginUsername">
              </div>
              <div class="form-group">
                <label for="customerLoginPassword">Password</label>
                <input type="password" class="form-control" id="customerLoginPassword" name="customerLoginPassword">
              </div>
              <button type="submit" id="customerLogin" class="btn btn-primary">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <?php
  require 'template/admin/footer.php';
  ?>
</body>

</html>