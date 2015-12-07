﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Xomorod.loginPage" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Xomorod web site login form" />
    <meta name="keywords" content="xomorod, zoomorod, login, form" />
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="img/favicon.jpg">
    <title>Login</title>

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">

    <!-- trianglify js and css -->
    <link href="css/login/trianglify.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/trianglify/0.4.0/trianglify.min.js"></script>

    <!-- particles style CSS -->
    <link rel="stylesheet" media="screen" href="css/login/particles/style.css">

    <!-- login form css -->
    <link href="css/login/login.css" rel="stylesheet" />

</head>
<body>
    <!-- Trianglify container -->
    <canvas id="headerCanvas"></canvas>
    <script src="js/login/TrianglifyCreator.js"></script>

    <!-- particles.js container -->
    <div id="particles-js"></div>

    <!-- login form container -->
    <div class="container">

        <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">

            <div class="row">
                <div class="iconmelon">
                    <svg viewBox="0 0 32 32">
                        <g filter="">
                            <use xlink:href="#git"></use>
                        </g>
                    </svg>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title text-center">Xomorod.com</div>
                </div>

                <div class="panel-body">

                    <form name="form" id="form" class="form-horizontal" enctype="multipart/form-data" method="POST">

                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="user" type="text" class="form-control" name="user" value="" placeholder="User">
                        </div>

                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                        </div>

                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-sm-12 controls">
                                <button type="submit" id="btn-submit" href="#" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-log-in"></i> Log in</button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>

</body>

<!-- scripts -->
<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
<script src="js/login/particles/app.js"></script>

</html>
