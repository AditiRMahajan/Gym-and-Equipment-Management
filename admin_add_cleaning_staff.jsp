
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        

        <!DOCTYPE html>

<html lang="en">

<head>
<title>GEMS FIT</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
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
          <h2>Cleaning Staff</h2>
        </div>
      </div>
      <div class="col-lg-12 col-md-12 col-sm-12">
        <ul class="breadcrumb">
          <li><a href="admin_index.jsp">home</a></li>
          <li>//</li>
          <li><a href="admin_about.jsp">Cleaning Staff</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!--Breadcrumb end-->

<div class="container">
  <h2> </h2>
  <br><br>
  <form class="form-horizontal" action="cleaning_entries.jsp" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="">STAFF ID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="" placeholder="Enter staff id" name="staff_id">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="">STAFF NAME:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="" placeholder="Enter staff name" name="staff_name">
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="">IN TIME:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="" placeholder="Enter in time" name="in_time">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="">OUT TIME:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="" placeholder="Enter out time" name="out_time">
      </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
         &nbsp;
      <div class="col-sm-offset-2 col-sm-10">
          <button type="clear" class="btn btn-default"><a href="admin_add_cleaning_staff.jsp">clear</a></button>
      </div>
    </div>
  </form>
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