

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
String  staff_id=request.getParameter("staff_id"); 
String staff_name=request.getParameter("staff_name"); 
String in_time=request.getParameter("in_time");
String out_time=request.getParameter("out_time"); 







try {
    
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gemsfit", "root", "root");
    statement=connection.createStatement();
    statement2=connection.createStatement();
   
   /* rs =statement.executeQuery(query);*/
  	
    statement.executeUpdate("INSERT INTO cleaning_staff (staff_id,staff_name,in_time,out_time)"
            +"VALUES ('"+staff_id+"','"+staff_name+"','"+in_time+"','"+out_time+"')");

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

