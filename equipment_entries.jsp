
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
String  equipment_id=request.getParameter("equipment_id"); 
String equipment_name=request.getParameter("equipment_name"); 
String manufacture_date=request.getParameter("manufacture_date");
String purchase_date=request.getParameter("purchase_date"); 
String equipment_cost=request.getParameter("equipment_cost"); 
String equipment_warranty=request.getParameter("equipment_warranty");
String maintainance_period=request.getParameter("maintainance_period");
String cleaning_period=request.getParameter("cleaning_period");







try {
    
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gemsfit", "root", "root");
    statement=connection.createStatement();
    statement2=connection.createStatement();
   
   /* rs =statement.executeQuery(query);*/
  	
    statement.executeUpdate("INSERT INTO equipment (equipment_id,equipment_name,manufacture_date,purchase_date,equipment_cost,equipment_warranty,maintainance_period,cleaning_period)"
            +"VALUES ('"+equipment_id+"','"+equipment_name+"','"+manufacture_date+"','"+purchase_date+"', '"+equipment_cost+"','"+equipment_warranty+"','"+maintainance_period+"','"+cleaning_period+"')");

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


