<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<form action="register" method = "post">
	
		<h1>Registration</h1>
		<p>Already Registered? <a href = "login.jsp"> Login</a> </p><br><br>
		First Name: <input type= "text" placeholder="Your first name" name = "firstname"><br><br>
		Last Name: <input type= "text" placeholder="Your Last Name" name = "lastname"><br><br>
		
		<label for="birthday">Birthday:</label>
	  <input type="date" id="birthday" name="birthday"><br><br>
			
		Address: <input type= "text" placeholder="street number" name = "streetnumber"><br><br>
		<input type= "text" placeholder="street name" name = "streetname"><br><br>
		<input type= "text" placeholder="city" name = "city"><br><br>
		<input type= "text" placeholder="state" name = "state"><br><br>
		<input type= "text" placeholder="zipcode" name = "zipcode"><br><br>
		Email ID : <input type= "email" placeholder="Enter Email Id" name = "emailid"><br><br>
		Password : <input type= "password" placeholder="Your password" name = "password"><br><br>
		Confirm Password : <input type= password placeholder="Confirm your password" name = "confirmpassword"><br><br><br>
		
		
		<input type="submit" name = "submit" value = "Register"> <input type = "reset" name = "reset" value = "Cancel"><br><br>
		
		
	</form>
	
</body>
</html>