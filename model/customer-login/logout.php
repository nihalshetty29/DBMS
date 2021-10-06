<?php
session_start();

unset($_SESSION['customerLoggedIn']);
unset($_SESSION['customerFullName']);
session_destroy();
header('Location: ../../customer-login.php');
exit();
