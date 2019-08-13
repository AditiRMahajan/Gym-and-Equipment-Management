<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%
String stu_id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "gemsfit";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

        <%@page contentType="text/html" pageEncoding="UTF-8"%>
       <!DOCTYPE html>

<html lang="en">

<head>
<title>GEMS FIT</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="description" content="GYM">
<meta name="keywords" content="gym, html template, gym template, fitness, workout, body, force">
<meta name="author" content="">
<meta name="MobileOptimized" content="320">

<!--Srart Style -->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- End Style -->
<!-- Favicon Link -->
<link rel="shortcut icon" type="image/png" href="images/header/favicon.png">
</head>
<body>
<!--Preloader Start-->
<div id="preloader">
  <div id="status"><img src="images/header/preloader.gif" id="preloader_image" alt="loader">
  </div>
</div>
<!--Preloader End-->
<!--Header start-->
<div class="gm_header_wrapper">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
        <div class="gm_logo">
          <a href="admin_index.jsp"><img src="images/header/logo.png" alt="Logo" title="Logo"></a>
          <button class="gm_menu_btn"><i class="fa fa-bars" aria-hidden="true"></i></button>
        </div>
      </div>
      <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
        <div class="gm_menu gm_single_index_menu">
            <ul>
              <li><a href="admin_index.jsp">home</a></li>
              <li><a href="admin_about.jsp">about us</a></li>
              <li><a href="admin_batches.jsp">batches</a></li>
              <li><a href="#">staff</a>
                <ul class="sub-menu">
                  <li><a href="admin_trainer.jsp">trainer</a></li>
                  <li><a href="admin_nutritionist.jsp">nutritionist</a></li>
                  <li><a href="admin_cleaningstaff.jsp">cleaning staff</a></li>
                </ul>
              </li>
              <li><a href="admin_members.jsp">members</a></li>
              <li><a href="#">pages</a>
                <ul class="sub-menu">
                  <li><a href="admin_packages.jsp">Packages</a></li>
                    <li><a href="admin_gallery.jsp">gallery</a></li>
                  
                </ul>
              </li>
                                                         <li><a href="#">equipment</a> 
                                                            <ul class="sub-menu">
									<li><a href="admin_equipment_details.jsp">details</a></li>
								    <li><a href="admin_equipment_record.jsp">record</a></li>
									
								</ul>
                                                        </li>
						
              <li><a href="admin_contact.jsp">contact us</a></li>
            </ul>
          </div>
      </div>
    </div>
  </div>
</div>
<!--Header end-->
<!--Breadcrumb start-->
<div class="gm_pagetitle">
<div class="gm_img_overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12">
        <div class="page_title">
          <h2>Nutritionist</h2>
        </div>
      </div>
      <div class="col-lg-12 col-md-12 col-sm-12">
        <ul class="breadcrumb">
          <li><a href="admin_index.jsp">home</a></li>
          <li>//</li>
          <li><a href="admin_nutritionist.jsp">Nutritionist</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!--Breadcrumb end-->

<div class="container">
  

  <h2>Nutritionist Details</h2>
    <br><br>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>nutritionist_id</th>
        <th>nutritionist_name</th>
        <th>visiting_hours</th>
        <th>nutritionist_contact_no</th>
     </tr>
    </thead>
   <tbody>
        
                            <%
                        try {
                            connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                            statement = connection.createStatement();
                            String sql = "SELECT * FROM nutritionist";

                            resultSet = statement.executeQuery(sql);
                            while (resultSet.next()) {
                    %>

                    <tr bgcolor="#DEB887">

                        <td><%=resultSet.getString(2)%></td>
                        <td><%=resultSet.getString(3)%></td>
                        <td><%=resultSet.getString(4)%></td>
                        <td><%=resultSet.getString(5)%></td>
                    </tr>

                    <%
                            }

                        } catch (SQLException ex) {
                            ex.getSQLState();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }


                    %>


        
    </tbody>
   </table>
</div>


<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-submit"><a href="admin_add_nutritionist.jsp">Add nutritionist</a></button>
      </div>
         &nbsp;&nbsp;&nbsp;
      <div class="col-sm-offset-2 col-sm-10">
        <button type="clear" class="btn btn-default">Remove Nutritionist</button>
      </div>

    </div>


<!--Footer section start-->
<div class="gm_footer_top_wrapper gm_toppadder80 gm_bottompadder60">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="gm_footer_logo">
          <img src="images/header/logo.png" class="img-responsive" alt="logo">
        </div>
        <div class="gm_footer_menu gm_single_index_menu">
          <ul>
            <li><a href="admin_index.jsp">home</a></li>
            <li><a href="admin_batches.jsp">batches</a></li>
            <li><a href="admin_packages.jsp">Packages</a></li>
            <li><a href="admin_gallery.jsp">gallery</a></li>
            <li><a href="admin_contact.jsp">contact us</a></li>
          </ul>
        </div>
        <div class="gm_footer_address">
          <p><i class="fa fa-phone" aria-hidden="true"></i>9623490272</p>
          <p><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> info@gemsfit.com</a></p>
          <p><i class="fa fa-map-marker" aria-hidden="true"></i>Amanora town city,Magarpatta,Pune</p>
        </div>

      </div>
    </div>
  </div>
</div>

<!--Footer section end-->
<!--Main js file Style--> 
<script type="text/javascript" src="js/jquery.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/owl.carousel.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.js"></script>
<script type="text/javascript" src="js/plugin/revol/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="js/plugin/revol/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="js/plugin/revol/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="js/plugin/revol/revolution.extension.carousel.min.js"></script>
<script type="text/javascript" src="js/plugin/revol/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="js/plugin/revol/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="js/plugin/revol/revolution.extension.migration.min.js"></script>
<script type="text/javascript" src="js/plugin/revol/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="js/plugin/revol/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="js/plugin/revol/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="js/plugin/countto/jquery.countTo.js"></script>
<script type="text/javascript" src="js/plugin/countto/jquery.appear.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!--Main js file End-->
</body>


</html>
