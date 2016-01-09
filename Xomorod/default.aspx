<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Xomorod._default" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!--iOS -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="description" content="Just for Xomorod.Co software company" />
    <meta name="author" content="Mr. Behzad Khosravifar" />
    <meta name="keywords" content="xomorod, zoomorod, form, software, company, small, business" />

    <link rel="shortcut icon" href="img/favicon.jpg">

    <title>Xomorod</title>

    <!---------- PreLoader Animate ----------->
    <link href="css/loader.css" rel="stylesheet" />
    <script src="js/loader.js"></script>
    <!---------------------------------------->
</head>

<body ng-app="xomorodApp" ng-controller="bodyController" id="page-top">

    <!---------- PreLoader Animate ----------->
    <div class="loader" id="loader">
        <div id='c'>
            <div class='s' id="s1"></div>
            <div class='s' id="s2"></div>
            <div class='s' id="s3"></div>
            <div class='s' id="s4"></div>
            <div class='s' id="s5"></div>
            <div class='s' id="s6"></div>
        </div>
    </div>
    <!---------------------------------------->

    <!-- Menu -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Xomorod</a>
                <a id="loginLink" data-toggle="tooltip" data-placement="right" data-original-title="{{ 'SignIn' | translate }}" class="navbar-brand" href="./pages/controlPanel.aspx"><i class="fa fa-1x fa-sign-in"></i></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="overflow: hidden">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a id="animationAbout" class="page-scroll" href="#about" translate>About</a>
                    </li>
                    <li>
                        <a id="animationServices" class="page-scroll" href="#services" translate>Services</a>
                    </li>
                    <li>
                        <a id="animationPortfolio" class="page-scroll" href="#portfolio" translate>Portfolios</a>
                    </li>
                    <li>
                        <a id="animationContact" class="page-scroll" href="#team" translate>Contact</a>
                    </li>
                    <li>
                        <div style="padding: 10px;" class="unselectable" >
                            <input id="chkLanguage" type="checkbox" checked data-toggle="toggle" data-on="English" data-off="فارسی" value="{{ isEnglish }}" onchange="OnLanguageChanged(checked);">
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
                <object data="img/xomorod.svg" type="image/svg+xml" id="svg-logo"></object>
                <h1 id="animationSandbox" class="site__title mega unselectable">Xomorod</h1>
            </div>
        </div>
        <a class="arrow-down fa fa-angle-down page-scroll" href="#about"></a>
    </header>
    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center" dir="{{ 'RightToLeft' | translate }}">
                    <h2 class="section-heading" translate>MoreInfoTitle</h2>
                    <hr class="light">
                    <p class="text-faded" translate>MoreInfo</p>
                    <a href="#head" class="btn btn-warning btn-xl page-scroll wow tada" translate>GetStarted</a>
                </div>
            </div>
        </div>
    </section>


    <!-- Header Section -->
    <div ng-include="'pages/html/services.html'"></div>


    <!-- Products -->
    <div ng-include="'pages/html/products.html'"></div>


    <!-- Download Ribbon -->
    <div ng-include="'pages/html/download_ribbon.html'"></div>


    <!-- Team Section -->
    <div ng-include="'pages/html/team_section.html'"></div>


    <!-- Contact Section -->
    <div ng-include="'pages/html/contact.html'"></div>

    <a href="#head" id="toTop" class="toTop unselectable fa fa-angle-up page-scroll" style="display: none;"></a>
</body>
<!---------- Load Scripts and Styles ----------->
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.0/css/bootstrap-toggle.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/xomorod-dialog.css" rel="stylesheet" />
<link href="css/xomorod.css" rel="stylesheet">

<!-- Plugin CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css" rel="stylesheet">

<!-- Marked JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/marked/0.3.5/marked.min.js"></script>

<!-- Angular.JS -->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.min.js"></script>

<!-- Angular Cookies -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-cookies.min.js"></script>

<!-- Angular-Marked JS -->
<script src="http://hypercubed.github.io/angular-marked/grunt-scripts/angular-marked.js"></script>

<!-- Angular Translate -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-translate/2.8.1/angular-translate.min.js"></script>

<!-- Angular Translate Url Loader -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-translate-loader-url/2.8.1/angular-translate-loader-url.min.js"></script>

<script src="js/app.js"></script>

<!-- Bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.0/js/bootstrap-toggle.min.js"></script>

<!-- Respond IE -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>

<!-- Plugin JavaScript -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/FitText.js/1.1/jquery.fittext.min.js"></script>

<!-- Animation Plugin -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/xomorod.js"></script>

<!-- Tooltips loader -->
<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>

<!-- Google Analystics -->
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-71146450-1', 'auto');
    ga('send', 'pageview');

</script>

<!---------------------------------------------->
</html>
