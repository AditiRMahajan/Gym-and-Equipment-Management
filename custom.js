/*------------------------------------------------------------------
[Master Javascript]

Project: Fitness First
Version: 1.0.0
Author: Kamleshyadav
Website: http://himanshusofttech.com/
Purchase: http://themeforest.net/user/kamleshyadav
-------------------------------------------------------------------*/

(function($){
  "use strict";
	
	// Preloader 
	jQuery(window).on('load', function() {
		jQuery("#status").fadeOut();
		jQuery("#preloader").delay(350).fadeOut("slow");
	});
	
	// ready function
	jQuery(document).ready(function($) {
   		var $this = $(window);
	
	// Banner Slider js
	var revapi1078 = jQuery("#rev_slider_1078_1").show().revolution({
		sliderType:"standard",
		jsFileLocation:"//server.local/revslider/wp-content/plugins/revslider/public/assets/js/",
		sliderLayout:"fullwidth",
		dottedOverlay:"none",
		delay:9000,
		navigation: {
			keyboardNavigation:"off",
			keyboard_direction: "horizontal",
			mouseScrollNavigation:"off",
			mouseScrollReverse:"default",
			onHoverStop:"off",
			touch:{
				touchenabled:"on",
				swipe_threshold: 75,
				swipe_min_touches: 1,
				swipe_direction: "horizontal",
				drag_block_vertical: false
			}
			,
			arrows: {
				style:"zeus",
				enable:true,
				hide_onmobile:true,
				hide_under:600,
				hide_onleave:true,
				hide_delay:200,
				hide_delay_mobile:1200,
				tmp:'<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div> </div>',
				left: {
					h_align:"left",
					v_align:"center",
					h_offset:30,
					v_offset:0
				},
				right: {
					h_align:"right",
					v_align:"center",
					h_offset:30,
					v_offset:0
				}
			}
			,
			bullets: {
				enable:true,
				hide_onmobile:true,
				hide_under:600,
				style:"metis",
				hide_onleave:true,
				hide_delay:200,
				hide_delay_mobile:1200,
				direction:"horizontal",
				h_align:"center",
				v_align:"bottom",
				h_offset:0,
				v_offset:30,
				space:5,
				tmp:'<span class="tp-bullet-img-wrap">  <span class="tp-bullet-image"></span></span><span class="tp-bullet-title">{{title}}</span>'
			}
		},
		viewPort: {
			enable:true,
			outof:"pause",
			visible_area:"100%",
			presize:false
		},
		responsiveLevels:[1240,1024,778,480],
		visibilityLevels:[1240,1024,778,480],
		gridwidth:[1240,1024,778,480],
		gridheight:[750,650,500,400],
		lazyType:"none",
		parallax: {
			type:"mouse",
			origo:"slidercenter",
			speed:2000,
			levels:[2,3,4,5,6,7,12,16,10,50,47,48,49,50,51,55],
			type:"mouse",
		},
		shadow:0,
		spinner:"off",
		stopLoop:"off",
		stopAfterLoops:-1,
		stopAtSlide:-1,
		shuffle:"off",
		autoHeight:"off",
		hideThumbsOnMobile:"off",
		hideSliderAtLimit:0,
		hideCaptionAtLimit:0,
		hideAllCaptionAtLilmit:0,
		debugMode:false,
		fallbacks: {
			simplifyAll:"off",
			nextSlideOnWindowFocus:"off",
			disableFocusListener:false,
		}
	});
	
	// On focus Placeholder css
	var place = '';
		$('input,textarea').focus(function(){
			place = $(this).attr('placeholder');
		$(this).attr('placeholder','');
		}).blur(function(){
		$(this).attr('placeholder',place);
		});
	
	// for counter 
		$('.timer').appear(function() {
			$(this).countTo();
		});
	
	// Menu js for Position fixed
	$(window).scroll(function(){
		var window_top = $(window).scrollTop() + 1; 
		if (window_top > 400) {
			$('.gm_header_wrapper').addClass('menu_fixed animated fadeInDown');
		} else {
			$('.gm_header_wrapper').removeClass('menu_fixed animated fadeInDown');
		}
	});
	
	// Menu show Hide
	var counter = 0;
	$('.gm_menu_btn').on("click", function(){
		if( counter == '0') {
			$('.gm_main_menu_wrapper').addClass('gm_main_menu_hide');
			$(this).children().removeAttr('class');
			$(this).children().attr('class','fa fa-close');
			counter++;
		}
		else {
			$('.gm_main_menu_wrapper').removeClass('gm_main_menu_hide');
			$(this).children().removeAttr('class');
			$(this).children().attr('class','fa fa-bars');
			counter--;
		}		
	});
	
	// Testimonial Slider	
	$('.owl-carousel').owlCarousel({
		loop:true,
		margin:10,
		autoplay:true,
		nav:true,
		responsive:{
			0:{
				items:1
			},
			600:{
				items:1
			},
			1000:{
				items:1
			}
		}
	});
	
	// Magnific Popup js
		$('.popup-gallery').magnificPopup({
			delegate: 'a',
			type: 'image',
			tLoading: 'Loading image #%curr%...',
			mainClass: 'mfp-img-mobile',
			gallery: {
				enabled: true,
				navigateByImgClick: true,
				preload: [0,1] // Will preload 0 - before current, and 1 after the current image
			},
			image: {
				tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
				titleSrc: function(item) {
					return item.el.attr('title') + '<small></small>';
				}
			}
		});
	
	// Contact Form Submition
	function checkRequire(formId , targetResp){
		targetResp.html('');
		var email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		var url = /(http|ftp|https):\/\/[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:\/~+#-]*[\w@?^=%&amp;\/~+#-])?/;
		var image = /\.(jpe?g|gif|png|PNG|JPE?G)$/;
		var mobile = /^[\s()+-]*([0-9][\s()+-]*){6,20}$/;
		var facebook = /^(https?:\/\/)?(www\.)?facebook.com\/[a-zA-Z0-9(\.\?)?]/;
		var twitter = /^(https?:\/\/)?(www\.)?twitter.com\/[a-zA-Z0-9(\.\?)?]/;
		var google_plus = /^(https?:\/\/)?(www\.)?plus.google.com\/[a-zA-Z0-9(\.\?)?]/;
		var check = 0;
		$('#er_msg').remove();
		var target = (typeof formId == 'object')? $(formId):$('#'+formId);
		target.find('input , textarea , select').each(function(){
			if($(this).hasClass('require')){
				if($(this).val().trim() == ''){
					check = 1;
					$(this).focus();
					targetResp.html('You missed out some fields.');
					$(this).addClass('error');
					return false;
				}else{
					$(this).removeClass('error');
				}
			}
			if($(this).val().trim() != ''){
				var valid = $(this).attr('data-valid');
				if(typeof valid != 'undefined'){
					if(!eval(valid).test($(this).val().trim())){
						$(this).addClass('error');
						$(this).focus();
						check = 1;
						targetResp.html($(this).attr('data-error'));
						return false;
					}else{
						$(this).removeClass('error');
					}
				}
			}
		});
		return check;
	}
	$(".submitForm").on("click", function() {
		var _this = $(this);
		var targetForm = _this.closest('form');
		var errroTarget = targetForm.find('.response');
		var check = checkRequire(targetForm , errroTarget);
		if(check == 0){
			var formDetail = new FormData(targetForm[0]);
			formDetail.append('form_type' , _this.attr('data-form-type'));
			$.ajax({
				method : 'post',
				url : 'ajax.php',
				data:formDetail,
				cache:false,
				contentType: false,
				processData: false
			}).done(function(resp){
				if(resp == 1){
					targetForm.find('input').val('');
					targetForm.find('textarea').val('');
					errroTarget.html('<p style="color:green;">Mail has been sent successfully.</p>');
				}else{
					errroTarget.html('<p style="color:red;">Something went wrong please try again latter.</p>');
				}
			});
		}
	});
	
	// video section
		jQuery(function($){
			$('#pro_video').css("display", "none");
			$('.gm_video_section .gm_img_overlay a i').on("click", function(e) {
				e.preventDefault();
				$('.gm_video_section .gm_video').hide();	
				$('#pro_video').css("display", "block");
				$('#pro_video').attr('src',$('#pro_video').attr('src')+'?rel=0&autoplay=1');
			});
		});
	
	});
	
})();	