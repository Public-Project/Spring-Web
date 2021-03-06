<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="app">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome to PaintaGun</title>
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
                <div ng-view></div>
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
  

   
</body>
</html>
