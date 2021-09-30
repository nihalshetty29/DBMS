<?php
include "connection.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" />
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;

        }

        body {
            background: white;
            font-family: 'Raleway'sans-serif;
            background: url("./store.jpg") no-repeat center center/cover;

        }

        a {
            text-decoration: none;
        }

        #container {
            margin: 110px auto;
            max-width: 400px;
            padding: 10px;
            line-height: 1.8;

        }

        .form-wrap {
            background-color: #FDF5E6;
            padding: 15px 20px;
            border-radius: 10px;

        }

        .form-wrap h1,
        .form-wrap p {
            text-align: center;
        }

        .form-wrap .form-group {
            margin-top: 30px;
        }

        .form-wrap .form-group label {
            display: block;
        }

        .form-wrap .form-group input {
            width: 100%;
            padding: 5px;
        }

        .form-wrap button {
            width: 100%;
            background: #49c1a2;
            display: block;
            padding: 5px;
            margin-top: 30px;
            border-radius: 5px;

        }

        .form-wrap button:hover {
            background-color: #37a08e;
        }
    </style>
</head>

<body>
    <div id="container">
        <div class="form-wrap">
            <h1>Admin Login</h1>
            <form name="form" method="post">
                <div class="form-group">
                    <label for="username"></label>Username</label>
                    <input type="text" name="username" id="username" />
                </div>


                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" />
                </div>

                <div class="form-actions">
                    <input type="submit" name="submit" value="Login" class="btn btn-success" />
                </div>
                <p class="bottom-text">

                    <a href="#">Terms & Conditions</a> and
                    <a href="#">Privacy Policy</a>
                </p>
            </form>
            <?php
            if (isset($_POST["submit"])) {

                $username = mysqli_real_escape_string($link, $_POST["username"]);
                $password = mysqli_real_escape_string($link, $_POST["password"]);
                $counter = 0;
                $newURL = 'admin-home.php';

                $res = mysqli_query($link, "select * from  admin where username ='$username' && password = '$password' ");
                $count = mysqli_num_rows($res);
                if ($count > 0) {
                    header('Location: ' . $newURL);
            ?>

                <?php
                } else {

                ?>
                    <div class="alert alert-danger">
                        <strong>Danger!</strong> Indicates a dangerous or potentially negative action.
                    </div>
            <?php
                }
            }
            ?>
        </div>
        <!-- <footer>
        <p>Already have an account? <a href="#">Login Here</a></p>
      </footer> -->
    </div>
</body>

</html>