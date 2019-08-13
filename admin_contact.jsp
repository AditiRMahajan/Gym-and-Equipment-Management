

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <!DOCTYPE html>

<html lang="en"><!--<![endif]-->

<head>
<title>GEMS FIT</title>
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
					<a href="index.jsp"><img src="images/header/logo.png" alt="Logo" title="Logo"></a>
					<button class="gm_menu_btn"><i class="fa fa-bars" aria-hidden="true"></i></button>
				</div>
			</div>
			<div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
				<div class="gm_main_menu_wrapper">
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
</div>
<!--Header end-->
<!--Breadcrumb start-->
<div class="gm_pagetitle">
<div class="gm_img_overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="page_title">
					<h2>contact us</h2>
				</div>
			</div>
			<div class="col-lg-12 col-md-12 col-sm-12">
				<ul class="breadcrumb">
					<li><a href="index.jsp">home</a></li>
					<li>//</li>
					<li><a href="contact.jsp">contact us</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!--Breadcrumb end-->
<!--Contact form section start-->
<div class="gm_contact_wrapper gm_toppadder80 gm_bottompadder80">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
				<div class="gm_bnr_form">
					<form>
						<div class="row">
							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<input type="text" placeholder="Frist Name" name="first_name" class="require">
							</div>
							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<input type="text" placeholder="Last Name" name="last_name" class="require">
							</div>
							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<input type="text" placeholder="Email" name="email" class="require" data-valid="email" data-error="Email should be valid.">
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<textarea rows="5" placeholder="Message" name="message" class="require"></textarea>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="response"></div>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-lg-offset-4 col-md-offset-4">
								<button type="button" class="gm_btn submitForm" data-form-type="contact">submit</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="gm_contact_infobox">
					<h2>Opening Time</h2>
					<dl>
						<dt>Monday</dt>
						<dd>05:00 AM - 20:00 PM</dd>
						<dt>Tuesday</dt>
						<dd>05:00 AM - 20:00 PM</dd>
						<dt>Wednesday</dt>
						<dd>05:00 AM - 20:00 PM</dd>
						<dt>Thursday</dt>
						<dd>05:00 AM - 20:00 PM</dd>
						<dt>Friday</dt>
						<dd>05:00 AM - 20:00 PM</dd>
						<dt>Saturday</dt>
						<dd>05:00 AM - 20:00 PM</dd>
					</dl>
					<span>sunday closed</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!--Contact form section end-->
<!--Map section start-->
<div class="gm_map">
	<div id="map"></div>
</div>
<!--Map section end-->
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
						<li><a href="index.jsp">home</a></li>
						<li><a href="classes.jsp">classes</a></li>
						<li><a href="packages.jsp">Packages</a></li>
						<li><a href="gallery.jsp">gallery</a></li>
						<li><a href="contact.jsp">contact us</a></li>
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
<script src="http://maps.google.com/maps/api/js?key=AIzaSyA46Q_0Kfate6HF_0GdZyLSQwJ8Y_4Wck4&amp;sensor=true"></script>
<script type="text/javascript" src="js/gmaps.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script>
    var map;
    $(document).ready(function(){
      map = new GMaps({
        el: '#map',
        zoom: 14,
        lat: -12.043333,
        lng: -77.028333,
		scrollwheel: false,
		draggable:false,
		zoomControl: false,
		navigationControl: false,
		mapTypeControl: false,
		scaleControl: false,
		disableDoubleClickZoom: true,
		streetViewControl : false,
		overviewMapControl: false,
		panControl : false
      });
	  map.addMarker({
        lat: -12.042,
        lng: -77.028333,
        title: 'Marker with InfoWindow',
        infoWindow: {
          content: '<p>70 Bowman St. South<br> Windsor, CT 06074</p>'
        }
      });
   
    });
  </script>
<!--Main js file End-->
</body>

</html>
