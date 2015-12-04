<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Xomorod.loginPage" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Custom Login Form Styling with CSS3" />
    <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
    <meta name="author" content="Codrops" />
    <link rel="shortcut icon" href="img/favicon.jpg">
    <title>Login</title>

    <link rel="stylesheet" type="text/css" href="css/login/style.css" />
    <link href="css/login/login.css" rel="stylesheet" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/trianglify/0.4.0/trianglify.min.js"></script>
</head>
<body>
    <canvas id="headerCanvas"></canvas>
    <script src="js/login/TrianglifyCreator.js"></script>
    <div id="wrapper">

        <form name="login-form" class="login-form" action="" method="post">

            <div class="header">
                <h1>Login Form</h1>
                <span>Fill out the form below to login to my super awesome imaginary control panel.</span>
            </div>

            <div class="content">
                <input name="username" type="text" class="input username" placeholder="Username" />
                <div class="user-icon"></div>
                <input name="password" type="password" class="input password" placeholder="Password" />
                <div class="pass-icon"></div>
            </div>

            <div class="footer">
                <input type="submit" name="submit" value="Login" class="button" />
                <input type="submit" name="submit" value="Register" class="register" />
            </div>

        </form>

    </div>

</body>
</html>
