<?php
session_start();
require_once('template/admin/header.html');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Store Management System: Login</title>
  <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" />
  <link href="./styles/style.css" rel="stylesheet" />
</head>

<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-12 col-md-5 col-lg-5">
        <div class="card">
          <div class="card-header">
            Role:
          </div>
          <div class="card-body">
            <button type="button" id="admin-login" class="btn btn-primary btn-block">Admin</button>
            <button type="button" id="customer-login" class="btn btn-primary btn-block">Customer</button>
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