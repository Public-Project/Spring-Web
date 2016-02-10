<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Login</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="assets/js/jQuery-2.1.4.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/icheck.min.js"></script>
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/AdminLTE.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
			<!-- Theme style -->
	<!-- 		<link rel="stylesheet" href="/home/nitin/Desktop/subranshu log in/AdminLTE.min.css">
			 --><!-- iCheck -->
	<link rel="stylesheet" href="assets/css/blue.css">
	<style >
		.errorFocus{
			  border: #dd4b39 1px solid;
		}
		.error{
			color: #dd4b39
	}
	</style>
	
</head>

<script>
	function ValidateForm(){
		var valid=true;
		$("#loginForm *").filter(":input").not("button").each(function(){
			var tempid=$(this).attr("id");
			var currVal=$("#"+tempid).val().trim();
			$("#" + tempid).click(function () {
				$("#" + tempid).removeClass("errorFocus");
			});
			var sType = $(this).prop('type');
			if (sType == "text" || sType == "password"||sType == "email") {
				if (currVal == "" || currVal == "null") {
					valid = "false";
					$("#" + tempid).addClass("errorFocus");
					/*$("#" + tempid).next().next().css("display", "inline-block");*/
				}
			}
			if (sType == "select-one") {
				var currVal = $("#" + tempid + " option:selected").text();
				if (currVal == "" || currVal == "null" || currVal == "Select" || currVal == "select") {
					valid = "false";
					$("#" + tempid).addClass("errorFocus");
					/*$("#" + tempid).next().next().css("display", "inline-block");*/
				}
			}
		});
		if(valid==true){
			var jsonObj={};
			var userName=$("#username").val().trim();
			var password=$("#password").val().trim();
			jsonObj.userName=userName;
			jsonObj.password=password;
			$.ajax({
				type:"POST",
				url:"/login",
				dataType:"json",
				contentType:"appliation/json",
				data:JSON.stringify(jsonObj),
				success:function(){
					alert("success");
				},
				error:function(){
					//alert("error");
				}
			});
		}
		
	}
</script>
<body class="hold-transition login-page"style="background-image: url('assets/css/images/bg.jpg')" >
		<div class="login-box" >
			<!-- /.login-logo -->
			<div class="login-box-body">
				<p class="login-box-msg">Sign in to start your session</p>
				<form id="loginForm" name="loginForm" >
					<div class="form-group has-feedback">
						<input type="email" id="username" class="form-control" placeholder="Email">
						<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
						<!-- <label class="error">This field is required</label> -->
					</div>
					<div class="form-group has-feedback">
						<input type="password" id="password" class="form-control" placeholder="Password">
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
						<!-- <label class="error">This field is required</label> -->
						
					</div>
					<div class="row">
						<div class="col-xs-8">
							<div class="checkbox icheck">
								<label>
									<input type="checkbox" id="rememberPassword"> Remember Me
								</label>
							</div>
						</div><!-- /.col -->
						<div class="col-xs-4">
							<button type="button" type="button" onclick ="ValidateForm()"  class="btn btn-primary btn-block btn-flat">Sign In</button>
						</div><!-- /.col -->
					</div>
				</form>

				<div class="social-auth-links text-center">
					<p>- OR -</p>
					<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
					<a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
				</div><!-- /.social-auth-links -->

				<a href="#">I forgot my password</a><br>
				<a href="register.html" class="text-center">Register a new User</a>

			</div><!-- /.login-box-body -->
		</div><!-- /.login-box -->
		<script>
			$(function () {
				$('input').iCheck({
					checkboxClass: 'icheckbox_square-blue',
					radioClass: 'iradio_square-blue',
					increaseArea: '20%' // optional
				});
			});
		</script>
	</body>
</html>