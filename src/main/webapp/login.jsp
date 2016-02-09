<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div id="mainWrapper" style="width: 100%; height: 100%">
		<form action="login" method="POST">
			<div
				style="width: 600px; height: 400px; margin: 0 auto; background-color: #e5f2ff">
				<div id="inner" style="width: 300px; padding: 120px 0 0 0px; margin: 0 auto;">
					User Name : <input type="text" id="username" size="20" name ="userName"
						style="float: right" /></br>
					</br> Password : <input type="password" id="password" size="20" name="password"
						style="float: right" /></br>
					</br> <input type="submit" value="Login"
						style="border: none;margin-left: 128px; border-radius: 5px; height: 30px; width: 63px; color: #ffffff; font-weight: 800; background-color: #3399ff;" /></br>
				</div>
			</div>
		</form>
	</div>
</body>
</html>