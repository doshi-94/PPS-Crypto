<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PPS System</title>
</head>
<body>

  <%
  out.println("Login Successful!!!");
	
        String emailid = request.getParameter("emailid");
  		
    %>
    <h5>
        Email ID :
        <%=emailid%>
    </h5>
<h1 align="center">Welcome to PPS Crypto System!!!</h1>
</body>
</html>