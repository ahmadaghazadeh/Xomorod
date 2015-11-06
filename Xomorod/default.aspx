<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Xomorod._default" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Just for Xomorod.Co software company">
    <meta name="author" content="Mr. Behzad Khosravifar">

    <link rel="shortcut icon" href="img/favicon.png">

    <title>Xomorod</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link href="css/bootstrap-toggle.css" rel="stylesheet">


    <!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/creative.css" type="text/css">
</head>

<body ng-app="xomorodApp" ng-controller="bodyController" id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <img src="img/favicon.png" class="CompanyMarker" alt="favicon">
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
                        <a ng-show="{{ xomorod.SignIn }}" href="/sign-in.html"><i class="fa fa-1x fa-sign-in"></i>  {{ xomorod.SignIn }}</a>
                        <a ng-show="{{ xomorod.SignIn }} == false" href="/sign-out.html"><i class="fa fa-1x fa-sign-out"></i>  {{ xomorod.SignOut }}</a>
                    </li>
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
                        <a class="page-scroll" href="#contact">{{ xomorod.Contact }}</a>
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

    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1>Xomorod</h1>
                <hr>
                <p>{{ xomorod.TileParagraph }}</p>
                <a href="#about" class="btn btn-primary btn-xl page-scroll">{{ xomorod.FindOutMore }}</a>
            </div>
        </div>
    </header>

    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">{{ xomorod.MoreInfoTitle }}</h2>
                    <hr class="light">
                    <p class="text-faded">{{ xomorod.MoreInfo }}</p>
                    <a href="#" class="btn btn-default btn-xl">{{ xomorod.GetStarted }}</a>
                </div>
            </div>
        </div>
    </section>

    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">{{ xomorod.AtYourServie }}</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-5x fa-diamond wow bounceIn text-primary"></i>
                        <h3>Xomorod</h3>
                        <p class="text-muted">Our templates are updated regularly so they don't break.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-5x fa-windows wow bounceIn text-primary" data-wow-delay=".1s"></i>
                        <h3>Windows</h3>
                        <p class="text-muted">You can use this theme as is, or you can make changes!</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-5x fa-android wow bounceIn text-primary" data-wow-delay=".2s"></i>
                        <h3>Android</h3>
                        <p class="text-muted">We update dependencies to keep things fresh.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-5x fa-apple wow bounceIn text-primary" data-wow-delay=".3s"></i>
                        <h3>Apple</h3>
                        <p class="text-muted">You have to make your websites with love these days!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="padding" id="portfolio" ng-controller="productsController">
        <div class="container-fluid">
            <div class="row previews">

                <div class="col-lg-4 col-sm-6" ng-repeat="portfolio in products">
                    <div class="thumbnail">
                        <a href="{{ portfolio.ProjectUrl }}" class="portfolio-box">
                            <img src="{{ portfolio.ImageSrc }}" class="img-responsive" alt="">
                            <div class="portfolio-box-caption">
                                <div class="portfolio-box-caption-content">
                                    <div class="project-category text-faded">
                                        {{ portfolio.Category }}
                                    </div>
                                    <div class="project-name">
                                        {{ portfolio.ProjectName }}
                                    </div>
                                </div>
                            </div>
                        </a>
                        <div class="caption">
                            <h3>{{ portfolio.ProjectName }}</h3>
                            <p>{{ portfolio.Description }} ...</p>
                            <p><a href="{{ portfolio.ProjectUrl }}" class="btn btn-social" role="button" ng-show="{{ portfolio.OpenSource }}"><i class="fa fa-2x fa-github"></i></a></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <h2>Free Download at Start Bootstrap!</h2>
                <a href="#" class="btn btn-default btn-xl wow tada">Download Now!</a>
            </div>
        </div>
    </aside>

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x wow bounceIn"></i>
                    <p>+98 914 914 9202</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s"></i>
                    <p><a href="mailto:info@Xomorod.com">feedback@Xomorod.com</a></p>
                </div>
            </div>
        </div>
    </section>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jquery.fittext.js"></script>
    <script src="js/wow.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/creative.js"></script>

    <!-- Angular JS -->
    <!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.20/angular.min.js"></script> -->
    <script src="js/angular.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-toggle.js" type="text/javascript"></script>

    <!-- Cooki JS -->
    <script src="js/cookies.js" type="text/javascript"></script>

    <!-- Marked JS -->
    <!-- https://github.com/chjj/marked -->
    <script src="js/marked.min.js" type="text/javascript"></script>

    <!-- Custom Angular JS Script -->
    <script src="js/angularAjaxApiCaller.js" type="text/javascript"></script>
</body>

</html>
