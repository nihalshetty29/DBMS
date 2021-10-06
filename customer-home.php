<?php
session_start();
// Redirect the user to login page if he is not logged in.
if (!isset($_SESSION['customerLoggedIn'])) {
  header('Location: customer-login.php');
  exit();
}

require_once('inc/config/constants.php');
require_once('inc/config/db.php');
?>

<?php
include('template/customer/header.php');
?>

<?php

/*  include banner area  */
include('template/customer/_banner-area.php');
/*  include banner area  */

/*  include top sale section */
include('template/customer/_top-sale.php');
/*  include top sale section */

/*  include banner ads  */
include('template/customer/_banner-ads.php');
/*  include banner ads  */

/*  include new phones section  */
include('template/customer/_new-phones.php');
/*  include new phones section  */
?>

<?php
include('template/customer/footer.php');
?>