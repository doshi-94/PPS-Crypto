package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSet.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.xdevapi.Statement;

public class LoginServlet extends HttpServlet{
	String emailid, password;
	private static Connection connect = null;
	  private static Statement statement = null;
	  private static PreparedStatement preparedStatement = null;
	  private static ResultSet resultSet = null;
	  private static java.sql.Connection conn;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		res.setContentType("text/html");
		emailid = req.getParameter("emailid");
		password = req.getParameter("password");
		
		
		
		try {
			
			
		      // This will load the MySQL driver, each DB has its own driver
		      Class.forName("com.mysql.jdbc.Driver");
		      // Setup the connection with the DB
			String url = "jdbc:mysql://localhost/pps";
			conn = DriverManager
			          .getConnection(url, "john","john1234");

		     
		    
		      String select =  "SELECT emailid, password, firstname FROM users where emailid='"+emailid+"' and password='"+password+"'";
		      java.sql.Statement statement =  conn.createStatement();
		      ResultSet rs = statement.executeQuery(select);
		     
		    
		      PrintWriter out = res.getWriter();
		      if (rs.next())
		      {
		    	 String firstname = rs.getString(3);
		    	// out.println("Login Successful!!!");
		  		//out.println("<h1> Welcome "+firstname+"!!!</h1>");
		  		RequestDispatcher dispatcher = req.getRequestDispatcher("Homepage.jsp");       
		        dispatcher.forward(req, res);
		       
				 
				 
		      }
		      else {
		    	  out.println("Login Failed!!!");
		    	  RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");       
			        dispatcher.forward(req, res);
		      }
		      
		      
		      
			
		} catch (Exception e) {
			System.out.println(e);
			
		}
		finally {
			close();
		}
	}
	 private static void close() {
    try {
      if (resultSet != null) {
        resultSet.close();
      }

      if (statement != null) {
    	 // statement.close();
      }

      if (connect != null) {
        connect.close();
      }
    } catch (Exception e) {

    }
	
	
 }
	 }