<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="app">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome to PaintaGun</title>
    <link rel="shortcut icon" type="image/jpg" href="assets/images/logo.jpg" />
   	<script src="assets/js/jQuery-2.1.4.min.js"></script>
	<script src="assets/lib/bootstrap.min.js"></script>
	<script src="assets/js/icheck.min.js"></script>
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<!-- <link rel="stylesheet" href="assets/css/AdminLTE.min.css"> -->
    <link rel="stylesheet" href="assets/css/main.css">
    <script src="assets/lib/jquery.prettyPhoto.js"></script>
    <script src="assets/lib/jquery.isotope.min.js"></script>
    <script src="assets/lib/main.js"></script>
    <script src="assets/lib/wow.min.js"></script>
    <script src="assets/lib/jquery.js"></script>
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/animate.min.css" rel="stylesheet">
    <link href="assets/css/prettyPhoto.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<link href="//cdn.rawgit.com/cornflourblue/angular-registration-login-example/master/app-content/app.css" rel="stylesheet" />
	
</head>


<body style="">

    <div class="">
        <div class="">
            <div class="">
                <div style="margin:30px" ng-class="{ 'alert': flash, 'alert-success': flash.type === 'success', 'alert-danger': flash.type === 'error' }" ng-if="flash" ng-bind="flash.message"></div>
                <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>+91 97558-23350</p></div>
                    </div>
                    <div class="col-sm-4 col-xs-6">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <!-- <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div> -->
                       </div>
                    </div>
                    <div class="col-sm-2 col-xs-2">
                        <div class="logout "><a href="#login">Logout</a></div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="home"><img src="assets/images/Cerrid_Analytics_Logo.png" alt="logo" width="200px"></a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li name=""  active-tab><a href="#">Home</a></li>
                        <li name="aboutus"   active-tab><a href="#aboutus">About Us</a></li>
                        <li name='upload' active-tab><a href="#upload">Upload Painting</a></li> 
                        <li name='buy'active-tab><a href="#buy">Buy Paintings</a></li> 
                        <li name='contacts' active-tab><a href="#contacts">Contact</a></li>  
                        <!-- <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">You need Painter <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="assets/templates/blog-item.html">Art Painter</a></li>
                                <li><a href="assets/templates/pricing.html">Home Painter</a></li>
                            </ul>
                        </li> -->
                        <!-- <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Are you Painter <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="assets/templates/blog-item.html">Art Painter</a></li>
                                <li><a href="assets/templates/pricing.html">Home Painter</a></li>
                            </ul>
                        </li> -->                      
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->
                <div ng-view></div>

    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Email Marketing</a></li>
                            <li><a href="#">Plugin Development</a></li>
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>
                            <li><a href="#">Exercitation</a></li>
                            <li><a href="#">Ullamco</a></li>
                            <li><a href="#">Laboris</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
            </div>
        </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2016 <a target="_blank" href="http://shapebootstrap.net/" title="Cerrid Solutions Pvt Ltd">Cerrid Solutions</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->
            </div>
        </div>
    </div>
    <!-- <div class="credits text-center">
        <p>
            <a href="http://jasonwatmore.com/post/2015/03/10/AngularJS-User-Registration-and-Login-Example.aspx" target="_top">AngularJS User Registration and Login Example</a>
        </p>
        <p>
            <a href="http://jasonwatmore.com" target="_top">JasonWatmore.com</a>
        </p>
    </div> -->

    <script src="//code.angularjs.org/1.2.20/angular.js"></script>
    <script src="//code.angularjs.org/1.2.20/angular-route.js"></script>
    <script src="//code.angularjs.org/1.2.13/angular-cookies.js"></script>
    <script src="assets/js/app.js"></script>

     <script>
            /*$(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });*/
        </script>
    
<!--load the controller -->
    <script src="assets/Service/authentication.service.js"></script>
    <script src="assets/Service/user.service.local-storage.js"></script>
    <script src="//cdn.rawgit.com/cornflourblue/angular-registration-login-example/master/app-services/flash.service.js"></script>

	
	<script src="assets/Controller/login.controller.js"></script>
	<script src="assets/Controller/register.controller.js"></script>
    <script src="assets/Controller/home.controller.js"></script>
    <script src="assets/Controller/setpassword.controller.js"></script>
    <script src="assets/Controller/aboutus.controller.js"></script>
    <script src="assets/Directive/angulardirective.js"></script>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap-tpls.min.js"></script>
  

   
</body>
</html>