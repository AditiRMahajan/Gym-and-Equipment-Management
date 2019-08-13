
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
String  member_email_id=request.getParameter("member_email_id"); 
String password=request.getParameter("password"); 
String re_password=request.getParameter("re_password");
String member_name=request.getParameter("member_name"); 
String date_of_birth=request.getParameter("date_of_birth"); 
String gender=request.getParameter("gender");
String member_address=request.getParameter("member_address");
String member_contact_no=request.getParameter("member_contact_no");
String packages=request.getParameter("package");
String batch_name=request.getParameter("batch_name");
String batch_time=request.getParameter("batch_time");





try {
    
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gemsfit", "root", "root");
    statement=connection.createStatement();
    statement2=connection.createStatement();
   
   /* rs =statement.executeQuery(query);*/
  	
    statement.executeUpdate("INSERT INTO member (member_email_id,password,re_enter_password,member_name,date_of_birth,gender,member_address,member_contact_no,package,batch_name,batch_time)"
            +"VALUES ('"+member_email_id+"','"+password+"','"+re_password+"','"+member_name+"', '"+date_of_birth+"','"+gender+"','"+member_address+
            "','"+member_contact_no+"','"+packages+"','"+batch_name+"','"+batch_time+"')");

    out.println ( "Records submiited.");
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

