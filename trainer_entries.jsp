
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
String  trainer_id=request.getParameter("trainer_id"); 
String trainer_name=request.getParameter("trainer_name"); 
String trainer_contact_no=request.getParameter("trainer_contact_no");
String t_batch_name=request.getParameter("t_batch_name"); 
String t_batch_time=request.getParameter("t_batch_time"); 






try {
    
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gemsfit", "root", "root");
    statement=connection.createStatement();
    statement2=connection.createStatement();
   
   /* rs =statement.executeQuery(query);*/
  	
    statement.executeUpdate("INSERT INTO trainer (trainer_id,trainer_name,trainer_contact_no,t_batch_name,t_batch_time)"
            +"VALUES ('"+trainer_id+"','"+trainer_name+"','"+trainer_contact_no+"','"+t_batch_name+"', '"+t_batch_time+"')");

    out.println ( "Records Submiited.");
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

