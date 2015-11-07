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

    <link href="css/xomorod-dialog.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/xomorod.css" type="text/css">
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
                    <!--<li>
                        <a href="/sign-in.html"><i class="fa fa-1x fa-sign-in"></i>{{ "   " + xomorod.SignState }}</a>
                    </li>-->
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
                <br />
                <br />
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
                        <i class="fa fa-5x fa-diamond wow bounceIn text-primary" data-wow-delay=".1s"></i>
                        <h3>{{ xomorod.Xomorod }}</h3>
                        <p class="text-muted">{{ xomorod.XomorodService }}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-5x fa-windows wow bounceIn text-primary" data-wow-delay=".2s"></i>
                        <h3>{{ xomorod.Windows }}</h3>
                        <p class="text-muted">{{ xomorod.WindowsService }}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-5x fa-android wow bounceIn text-primary" data-wow-delay=".3s"></i>
                        <h3>{{ xomorod.Android }}</h3>
                        <p class="text-muted">{{ xomorod.AndroidService }}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-5x fa-apple wow bounceIn text-primary" data-wow-delay=".4s"></i>
                        <h3>{{ xomorod.Apple }}</h3>
                        <p class="text-muted">{{ xomorod.AppleService }}</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Products -->
    <div ng-controller="productsController">
        <!-- Portfolio Grid Section -->
        <section class="bg-light-gray" id="portfolio">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">Portfolio</h2>
                        <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-4 col-sm-6  portfolio-item" ng-repeat="portfolio in products">
                        <div class="thumbnail">
                            <a href="{{ '#portfolioModal' + portfolio.Id }}" class="portfolio-link" data-toggle="modal">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content">
                                        <i class="fa fa-search-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img src="{{ portfolio.ImageSrc }}" class="img-responsive" alt="">
                            </a>
                            <div class="portfolio-caption">
                                <h4>{{ portfolio.ProjectName }}</h4>
                                <p class="text-muted">{{ portfolio.Category }}</p>
                                <p><a href="{{ portfolio.ProjectUrl }}" class="btn btn-social" role="button" ng-show="{{ portfolio.OpenSource }}"><i class="fa fa-2x fa-github"></i></a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Portfolio Modals -->
        <!-- Use the modals below to showcase details about your portfolio projects! -->
        <div ng-repeat="portfolio in products">
            <!-- Portfolio Modal 1 -->
            <div class="portfolio-modal modal fade" id="{{ 'portfolioModal' + portfolio.Id }}" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl">
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="modal-body">
                                    <!-- Project Details Go Here -->
                                    <h2>{{ portfolio.ProjectName }}</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-responsive img-centered" src="{{ portfolio.ImageSrc }}" alt="">
                                    <p>{{ portfolio.Description }}</p>
                                    <p>
                                        <strong>Want these icons in this portfolio item sample?</strong>You can download 60 of them for free, courtesy of <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">RoundIcons.com</a>, or you can purchase the 1500 icon set <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">here</a>.
                                    </p>
                                    <ul class="list-inline">
                                        <li>Date: July 2014</li>
                                        <li>Client: Round Icons</li>
                                        <li>{{ 'Category: ' + portfolio.Category }}</li>
                                    </ul>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>    Close Project</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <aside class="bg-primary">
        <div class="container text-center">
            <div class="call-to-action">
                <h2>Free Download at Xomorod!</h2>
                <a href="#" class="btn btn-default btn-xl wow tada">Download Now!</a>
            </div>
        </div>
    </aside>

    <!-- Team Section -->
    <section id="team" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Our Amazing Team</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="team-member">
                        <img src="img/me.jpg" class="img-responsive img-circle" alt="">
                        <h4>Behzad Khosravifar</h4>
                        <p class="text-muted">C# and JavaScript Programmer</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="https://twitter.com/bkhosravifar"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="https://www.facebook.com/behzad.khosravifar"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="https://www.linkedin.com/profile/view?id=ADEAABC6VqUBOT2sadoC0i_2BSRXlVRta0uEdvY&authType=NAME_SEARCH&authToken=-ipF&locale=en_US&srchid=2806473331446842796439&srchindex=1&srchtotal=1&trk=vsrp_people_res_name&trkInfo=VSRPsearchId%3A2806473331446842796439%2CVSRPtargetId%3A280647333%2CVSRPcmpt%3Aprimary%2CVSRPnm%3Atrue%2CauthType%3ANAME_SEARCH"><i class="fa fa-linkedin"></i></a>
                            </li>
                            <li><a href="https://github.com/Behzadkhosravifar"><i class="fa fa-github"></i></a>
                            </li>
                            <li><a href="https://plus.google.com/u/0/+BehzadKhosravifar"><i class="fa fa-google-plus"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="team-member">
                        <img src="img/partner.jpg" class="img-responsive img-circle" alt="">
                        <h4>?</h4>
                        <p class="text-muted">Sql and Android Programmer</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-github"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
                </div>
            </div>
        </div>
    </section>

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

    <!-- Bootstrap JS -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-toggle.js" type="text/javascript"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jquery.fittext.js"></script>
    <script src="js/wow.min.js"></script>

    <!-- Cooki JS -->
    <script src="js/cookies.js" type="text/javascript"></script>

    <!-- Angular JS -->
    <!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.20/angular.min.js"></script> -->
    <script src="js/angular.min.js"></script>

    <!-- Marked JS -->
    <!-- https://github.com/chjj/marked -->
    <script src="js/marked.min.js" type="text/javascript"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/creative.js"></script>

    <!-- Custom Angular JS Script -->
    <script src="js/angularAjaxApiCaller.js" type="text/javascript"></script>

</body>

</html>
