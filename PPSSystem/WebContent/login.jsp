<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<form action="login" method ="post">
		<h1>Login</h1>
		Email ID : <input type= "email" placeholder="Enter Email Id" name = "emailid"><br><br>
		Password : <input type= "password" placeholder="your password" name = "password"><br><br>
		<input type="submit" name = "submit" value = "Login">
		<br><br>
		<p>Not Yet Registered? <a href = "register.jsp"> Register Here!</a> </p>
	</form>
</body>
</html>