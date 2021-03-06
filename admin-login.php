<?php
session_start();

if (isset($_SESSION['loggedIn'])) {
  header('Location: admin-home.php');
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
            Admin Login
          </div>
          <div class="card-body">
            <form action="">
              <div id="loginMessage"></div>
              <div class="form-group">
                <label for="loginUsername">Username</label>
                <input type="text" class="form-control" id="loginUsername" name="loginUsername">
              </div>
              <div class="form-group">
                <label for="loginPassword">Password</label>
                <input type="password" class="form-control" id="loginPassword" name="loginPassword">
              </div>
              <button type="submit" id="login" class="btn btn-primary">Login</button>
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