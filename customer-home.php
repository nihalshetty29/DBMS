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