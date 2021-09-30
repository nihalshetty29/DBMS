<?php
session_start();
// Redirect the user to login page if he is not logged in.
if (!isset($_SESSION['loggedIn'])) {
  header('Location: admin-login.php');
  exit();
}

require_once('inc/config/constants.php');
require_once('inc/config/db.php');
require_once('template/admin/header.html');
?>

<body>
  <?php
  require 'template/admin/navigation.php';
  ?>
  <!-- Page Content -->
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-2">
        <h1 class="my-4"></h1>
        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
          <a class="nav-link active" id="v-pills-item-tab" data-toggle="pill" href="#v-pills-item" role="tab" aria-controls="v-pills-item" aria-selected="true">Items</a>
          <a class="nav-link" id="v-pills-sale-tab" data-toggle="pill" href="#v-pills-sale" role="tab" aria-controls="v-pills-sale" aria-selected="false">Orders</a>
          <a class="nav-link" id="v-pills-customer-tab" data-toggle="pill" href="#v-pills-customer" role="tab" aria-controls="v-pills-customer" aria-selected="false">Customers</a>
          <a class="nav-link" id="v-pills-search-tab" data-toggle="pill" href="#v-pills-search" role="tab" aria-controls="v-pills-search" aria-selected="false">Search</a>
        </div>
      </div>
      <div class="col-lg-10">
        <div class="tab-content" id="v-pills-tabContent">
          <?php
          include 'template/admin/item-details.php';
          ?>
          <?php
          include 'template/admin/order-details.php';
          ?>
          <?php
          include 'template/admin/customer-details.php';
          ?>
          <?php
          include 'template/admin/search.php';
          ?>
        </div>
      </div>
    </div>
  </div>
  <?php
  require 'template/admin/footer.php';
  ?>
</body>

</html>