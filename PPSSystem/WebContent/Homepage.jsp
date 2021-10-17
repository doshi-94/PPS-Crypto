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
  		String firstname =(String)request.getAttribute("firstname");
  		
  		
    %>
    <h5>
        Email ID :
        <%=emailid%>
        <p>
        User's First Name :<%=firstname %>
        </p>
    </h5>
<h1 align="center">Welcome to PPS Crypto System!!!</h1>
</body>
</html>