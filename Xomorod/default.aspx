<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Xomorod._default" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Just for Xomorod.Co software company">
    <meta name="author" content="Mr. Behzad Khosravifar">

    <link rel="shortcut icon" href="img/favicon.jpg">

    <title>Xomorod</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <link href="css/bootstrap-toggle.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    <link href="css/xomorod-dialog.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/xomorod.css" type="text/css">

    <!-- Load Angular.JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.20/angular.min.js"></script>
</head>

<body ng-app="xomorodApp" ng-controller="bodyController" id="page-top">

    <!-- Menu -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <img src="img/xomorod.svg" class="CompanyMarker" alt="favicon">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Xomorod</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#about">{{ xomorod.About }}</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">{{ xomorod.Services }}</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">{{ xomorod.Portfolio }}</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#team">{{ xomorod.Contact }}</a>
                    </li>
                    <li>
                        <div style="padding: 10px;" width="50px" text-align="center">
                            <input id="chkLanguage" type="checkbox" checked data-toggle="toggle" data-on="English" data-off="فارسی" onchange="changeLanguage()">
                        </div>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- End of Menu -->

    <!-- Header Section -->
    <header id="head">
        <div class="header-content">
            <div class="header-content-inner">
                <h1>Xomorod</h1>
                <hr>
            </div>
            <%--<a href="#about" class="btn btn-primary btn-xl page-scroll">{{ xomorod.FindOutMore }}</a>--%>
        </div>
    </header>
    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">{{ xomorod.MoreInfoTitle }}</h2>
                    <hr class="light">
                    <p class="text-faded">{{ xomorod.MoreInfo }}</p>
                    <a href="#head" class="btn btn-default btn-xl page-scroll">{{ xomorod.GetStarted }}</a>
                </div>
            </div>
        </div>
    </section>


    <!-- Header Section -->
    <div ng-include="'html/services.html'"></div>


    <!-- Products -->
    <div ng-include="'html/products.html'"></div>


    <!-- Download Ribbon -->
    <div ng-include="'html/download_ribbon.html'"></div>


    <!-- Team Section -->
    <div ng-include="'html/team_section.html'"></div>


    <!-- Contact Section -->
    <div ng-include="'html/contact.html'"></div>

</body>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script src="js/bootstrap-toggle.js" type="text/javascript"></script>

<!-- Plugin JavaScript -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/FitText.js/1.1/jquery.fittext.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>

<!-- Cooki JS -->
<script src="js/cookies.min.js" type="text/javascript"></script>

<!-- Marked JS -->
<!-- https://github.com/chjj/marked -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/marked/0.3.5/marked.min.js" type="text/javascript"></script>

<!-- Custom Theme JavaScript -->
<script src="js/xomorod.js"></script>

<!-- Custom Angular JS Script -->
<script src="js/angularAjaxApiCaller.js" type="text/javascript"></script>
</html>
