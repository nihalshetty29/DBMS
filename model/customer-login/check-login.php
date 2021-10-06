<?php
session_start();
require_once('../../inc/config/constants.php');
require_once('../../inc/config/db.php');

$customerLoginUsername = '';
$customerLoginPassword = '';
$hashedPassword = '';

if (isset($_POST['customerLoginUsername'])) {
  $customerLoginUsername = $_POST['customerLoginUsername'];
  $customerLoginPassword = $_POST['customerLoginPassword'];

  if (!empty($customerLoginUsername) && !empty($customerLoginUsername)) {

    // Sanitize username
    $customerLoginUsername = filter_var($customerLoginUsername, FILTER_SANITIZE_STRING);

    // Check if username is empty
    if ($customerLoginUsername == '') {
      echo '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button>Please enter Username</div>';
      exit();
    }

    // Check if password is empty
    if ($customerLoginPassword == '') {
      echo '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button>Please enter Password</div>';
      exit();
    }

    // Encrypt the password
    $hashedPassword = md5($customerLoginPassword);

    // Check the given credentials
    $checkUserSql = 'SELECT * FROM customer WHERE username = :username AND password = :password';
    $checkUserStatement = $conn->prepare($checkUserSql);
    $checkUserStatement->execute(['username' => $customerLoginUsername, 'password' => $hashedPassword]);

    // Check if user exists or not
    if ($checkUserStatement->rowCount() > 0) {
      // Valid credentials. Hence, start the session
      $row = $checkUserStatement->fetch(PDO::FETCH_ASSOC);

      $_SESSION['customerLoggedIn'] = '1';
      $_SESSION['customerFullName'] = $row['fullName'];

      echo '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Login success! Redirecting you to home page...</div>';
      exit();
    } else {
      echo '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button>Incorrect Username / Password</div>';
      exit();
    }
  } else {
    echo '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">&times;</button>Please enter Username and Password</div>';
    exit();
  }
}
