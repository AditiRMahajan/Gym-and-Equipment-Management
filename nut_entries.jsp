
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title></title>
</head>
<body>

<%
Connection connection = null;
Statement statement = null;
ResultSet rs = null; 
ResultSet resultSet2=null;
Statement statement2=null;
%>
<% 
Connection con=null;
String  nutritionist_id=request.getParameter("nutritionist_id"); 
String nutritionist_name=request.getParameter("nutritionist_name"); 
String visiting_hours=request.getParameter("visiting_hours");
String nutritionist_contact_no=request.getParameter("nutritionist_contact_no"); 







try {
    
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gemsfit", "root", "root");
    statement=connection.createStatement();
    statement2=connection.createStatement();
   
   /* rs =statement.executeQuery(query);*/
  	
    statement.executeUpdate("INSERT INTO nutritionist (nutritionist_id,nutritionist_name,visiting_hours,nutritionist_contact_no)"
            +"VALUES ('"+nutritionist_id+"','"+nutritionist_name+"','"+visiting_hours+"','"+nutritionist_contact_no+"')");

    out.println ( "Records Submitted.");
    /*rs.close();*/
    statement.close();
    connection.close();
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }

%>

</body>
</html>

