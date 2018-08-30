<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <meta name="author" content="Bright">
    <title>Bright a Bootstrap HTML5 Education Template</title>
    <!-- Bootstrap CSS -->    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
    <!-- Main Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/main.css">
    <!-- Normalize Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/normalize.css">
    <!-- Fonts Awesome -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/fonts/font-awesome.min.css">
 
    <!-- Animate CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/animate.css" type="text/css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/owl.theme.css" type="text/css">
    <!-- Rev Slider Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/settings.css" type="text/css">
    <!-- Nivo Lightbox Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/nivo-lightbox.css" type="text/css">
    <!-- Slicknav Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slicknav.css" type="text/css">
    <!-- Responsive Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/responsive.css">
    <!-- Color CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/colors/sky.css" media="screen" />
    
    <script>
    function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("/EnglishCat/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}


	function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadFullAddr.value = roadFullAddr;
		
		
	}

	</script>

  </head>
  <body>
    
    <!-- Header area wrapper Starts -->
    <header id="header-wrap">
      <!-- Roof area Starts -->
      <div id="roof" class="hidden-xs">
          <div class="container">
              <!-- Wellcome Starts -->
              <div class="pull-left">
                <i class="fa fa-map-o" aria-hidden="true"></i> Sydney NSW 2052, Australia
              </div>
              <!-- Wellcome End -->

              <!-- Quick Contacts Starts -->
              <div class="quick-contacts pull-right">
                  <span><i class="fa fa-phone"></i> +61 2 9385 1000</span>
                  <span><i class="fa fa-envelope"></i><a href="#">hello@brightuniversity.edu</a></span>
                  <span><a href="<%=request.getContextPath()%>/account/login.jsp"><i class="fa fa-user"></i> Login</a> / <a href="<%=request.getContextPath()%>/account/registration.jsp">Register</a></span>
              </div>
              <!-- Quick Contacts End -->
          </div>
      </div>
      <!-- Roof area End -->

      <!-- Navbar Start -->
      <nav class="navbar navbar-default main-navigation" role="navigation" data-spy="affix" data-offset-top="50">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/assets/img/logo.png" alt=""></a>
            </div>
            <!-- Brand End -->

            <!-- Search Icon -->
            <div class="header-search pull-right">
                <a class="open-search">
                    <i class="fa fa-search"></i>
                </a>
            </div>  
            <!-- Collapse Navbar -->
            <div class="collapse navbar-collapse" id="navbar">
              <ul class="nav navbar-nav navbar-right">
                <li class="dropdown dropdown-toggle">
                  <a href="index.jsp" data-toggle="dropdown">Home <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="index.jsp">Home Page 1</a></li>    
                    <li><a href="index-1.jsp">Home Page 2</a></li>     
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Courses <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="courses-list.jsp">Courses List</a></li>    
                    <li><a href="courses-grid.jsp">Courses Grid</a></li>  
                    <li><a href="courses-single.jsp">Single Course</a></li>   
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a class="active" href="#" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="about.jsp">About Page</a></li>                     
                    <li><a href="gallery.jsp">Image Gallery</a></li>
                    <li><a href="faq.jsp">FAQ</a></li>    
                    <li><a href="login.jsp">Login Page</a></li> 
                    <li><a href="single-teacher.jsp">Single Teacher</a></li> 
                    <li><a class="active" href="registration.jsp">Registration Form</a></li> 
                    <li><a href="contact.jsp">Contacts</a></li> 
                    <li><a href="404.jsp">404</a></li> 
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Events <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="event-grid.jsp">Events Grid</a></li>                     
                    <li><a href="event.jsp">Single Event</a></li>
                  </ul>                        
                </li> 
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Blog <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="blog.jsp">Blog - Right Sidebar</a></li>                     
                    <li><a href="blog-left-sidebar.jsp">Blog - Left Sidebar</a></li>
                    <li><a href="blog-full-width.jsp">Blog - Full Width</a></li>   
                    <li><a href="single-post.jsp">Blog Single Post</a></li>   
                  </ul>                        
                </li>              
                <li><a href="contact.jsp">Contact</a></li>
              </ul>
            </div>  
             <!-- Form for navbar search area -->
            <form class="full-search">
              <div class="container">
                <div class="row">
                  <input class="form-control" type="text" placeholder="Search">
                  <a class="close-search">
                  <span class="fa fa-times">
                  </span>
                  </a>
                </div>
              </div>
            </form>
            <!-- Search form ends -->   

            <!-- Mobile Menu Start -->
            <ul class="wpb-mobile-menu">
              <li>
                <a href="index.jsp">Home</a>
                <ul>
                  <li><a href="index.jsp">Home Page 1</a></li>    
                  <li><a href="index-1.jsp">Home Page 2</a></li>     
                </ul>                        
              </li>
              <li>
                <a href="#">Courses</a>
                <ul>
                  <li><a href="courses-list.jsp">Courses List</a></li>    
                  <li><a href="courses-grid.jsp">Courses Grid</a></li>  
                  <li><a href="courses-single.jsp">Single Course</a></li>   
                </ul>                        
              </li>
              <li>
                <a class="active" href="#">Pages</a>
                <ul>
                  <li><a href="about.jsp">About Page</a></li>                     
                  <li><a href="gallery.jsp">Image Gallery</a></li>
                  <li><a href="faq.jsp">FAQ</a></li>    
                  <li><a href="login.jsp">Login Page</a></li> 
                  <li><a href="single-teacher.jsp">Single Teacher</a></li> 
                  <li><a class="active" href="registration.jsp">Registration Form</a></li> 
                  <li><a href="contact.jsp">Contacts</a></li> 
                  <li><a href="404.jsp">404</a></li> 
                </ul>                        
              </li>
              <li>
                <a href="#">Events</a>
                <ul>
                  <li><a href="event-grid.jsp">Events Grid</a></li>                     
                  <li><a href="event.jsp">Single Event</a></li>
                </ul>                        
              </li> 
              <li>
                <a href="#">Blog</a>
                <ul>
                  <li><a href="blog.jsp">Blog - Right Sidebar</a></li>                     
                  <li><a href="blog-left-sidebar.jsp">Blog - Left Sidebar</a></li>
                  <li><a href="blog-full-width.jsp">Blog - Full Width</a></li>   
                  <li><a href="single-post.jsp">Blog Single Post</a></li>   
                </ul>                        
              </li>              
              <li><a href="contact.jsp">Contact</a></li>
            </ul>
            <!-- Mobile Menu End -->

          </div>
      </nav>
      <!-- Navbar End -->

    </header>
    <!-- Header area wrapper End -->

    <!-- Page Header Start -->
    <div class="page-header" style="background: url(assets/img/banner1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">Form Fields</h2>
              <a href="/index.jsp">Home</a>
              <span>/</span>
              <span class="current">Form Fields</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page Header End --> 

    <!-- Start Content Section -->
    <section id="content">
      <div class="container">
        <div class="row">
          <!-- <div class="col-md-6">
            <h2 class="medium-title">Login Form</h2>   
            Form
            <form class="login-form" role="form" method="post">
              <div class="form-group">
                <input type="text" class="form-control" name="name" placeholder="Name (required)">   
              </div> 
              <div class="form-group">
                <input type="email" class="form-control" name="EMAIL" placeholder="Email">  
              </div>       
              <button type="submit" id="submit" class="btn btn-common">Login Account</button>                
            </form>
          </div> -->
          <div class="col-md-6">
            <h2 class="medium-title">Register Form</h2>   
            <!-- Register Form -->
            <form class="register-form" role="form" method="post" action="#">
                <div class="form-group">
                	<label class="form-control-label">ID</label>                 
     				<input class="form-control" type="text" name="user_id" maxlength="20" required autofocus>
                </div>
                
                <div class="form-group">  
                	<label class="form-control-label">Password</label>               
     				<input class="form-control" type="password" name="user_pass" maxlength="20" required>
                </div>
                
                <div class="form-group">   
                	<label class="form-control-label">Password Check</label>              
     				<input class="form-control" type="password" name="user_pass_check" maxlength="20" required>
                </div>
                
                <div class="form-group">
                <label class="form-control-label">Name</label>
                  <input class="form-control" type="text" name="user_name" maxlength="20">
                </div>    
                
                <div class="form-group">
                <label class="form-control-label">Phone</label>
                  <input class="form-control" type="tel" name="user_phone" maxlength="20">
                </div>
                
                <div class="form-group">
                 <label class="form-control-label">Email</label>	
                  <input class="form-control" type="Email" name="user_mail" maxlength="20">
                </div> 
                
                <div class="form-group">
     			<label class="form-control-label">Address</label>
     			<button class="btn btn-outline-info float-right" type="button" onclick="goPopup()">Search Korean Address</button>
     			
     			<div id="list"></div>
				<div id="callBackDiv">			
     			<input class="form-control form-control-lg" type="text" name="roadFullAddr" id="roadFullAddr" maxlength="20" required readonly>
     			</div>
     			</div>                 
                              
                <button class="btn btn-common" type="submit" id="submit">Create Account</button>
            </form>
     		</div>
      </div>
    </section>
    <!-- End Content Section  -->

    <!-- Start Call to Action Section -->
    <div class="cta">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-8">
            <h3>Learning Management System</h3>
          </div>
          <div class="col-md-4 col-sm-4">
            <a href="#" class="btn btn-border">Create Account</a>
          </div>
        </div>
      </div>
    </div>
    <!-- End Call to Action Section -->

    <!-- Footer Section -->
    <footer>
      <!-- Container Starts -->
      <div class="container">
        <!-- Row Starts -->
        <div class="row">
          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-3 col-sm-6 col-xs-12">
            <h3 class="small-title">
              Contact Info
            </h3>
            <p>
              A powerhouse of cutting-edge education, research & teaching in The World
            </p>  
            <ul class="address">
                <li><i class="fa fa-home"></i> Sydney NSW 2052, Australia</li>
                <li><i class="fa fa-phone"></i> +61 2 9385 1000</li>
                <li><i class="fa fa-envelope"></i> hello@brightuniversity.edu</li>
            </ul>        
          </div><!-- Footer Widget Ends -->
          
          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-3 col-sm-6 col-xs-12">
            <h3 class="small-title">
              Latest News
            </h3>
            <ul class="recent-post">
              <li class="post">
                <a href="assets/img/flicker/img1.jpg" class="lightbox">
                <img alt="" src="assets/img/flicker/img1.jpg">
                </a>
                <p class="text">Fightin'the system like true modern <br><span>Nov 05,2016</span></p>
              </li>
              <li class="post">
                <a href="assets/img/flicker/img1.jpg" class="lightbox">
                <img alt="" src="assets/img/flicker/img2.jpg">
                </a>
                <p class="text">Will we're movin' on up to the east side <br><span>Nov 09,2016</span></p>
              </li>
            </ul>
          </div>
          <!-- Footer Widget Ends -->        

          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-3 col-sm-6 col-xs-12">
            <h3 class="small-title">
              Our Courses
            </h3>
            <ul class="list">
              <li><a href="#">Web design</a></li>
              <li><a href="#">Android Developer</a></li>
              <li><a href="#">PHP Tranning</a></li>
              <li><a href="#">IOS Developer</a></li>
              <li><a href="#">App Design Package</a></li>
            </ul>
          </div>
          <!-- Footer Widget Ends -->

          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-3 col-sm-6 col-xs-12">
            <h3 class="small-title">
              College Gallery
            </h3>
            <div class="plain-flicker-gallery">
              <a href="#" title="Pan Masala"><img src="assets/img/flicker/img1.jpg" alt=""></a>
              <a href="#" title="Sports Template for Joomla"><img src="assets/img/flicker/img2.jpg" alt=""></a>
              <a href="" title="Apple Keyboard"><img src="assets/img/flicker/img3.jpg" alt=""></a>
              <a href="" title="Hard Working"><img src="assets/img/flicker/img4.jpg" alt=""></a>
              <a href="" title="Smile"><img src="assets/img/flicker/img5.jpg" alt=""></a>
              <a href="" title="Puzzle"><img src="assets/img/flicker/img6.jpg" alt=""></a>
            </div>
          </div><!-- Footer Widget Ends -->
        </div><!-- Row Ends -->
      </div><!-- Container Ends -->
      
      <!-- Copyright -->
      <div id="copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-6  col-sm-6">
              <p class="copyright-text">
                Â© All rights reserved 2017 - Design &amp; Developed by <a href="http://graygrids.com">GrayGrids</a>
              </p>
            </div>
            <div class="col-md-6  col-sm-6">                
              <div class="bottom-social-icons pull-right">  
                <a class="facebook" target="_blank" href="https://web.facebook.com/GrayGrids"><i class="fa fa-facebook"></i></a> 
                <a class="twitter" target="_blank" href="https://twitter.com/GrayGrids"><i class="fa fa-twitter"></i></a>
                <a class="google-plus" target="_blank" href="https://plus.google.com"><i class="fa fa-google-plus"></i></a>
                <a class="linkedin" target="_blank" href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a>
              </div>            
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright  End-->
      
    </footer>
    <!-- Footer Section End-->

    <!-- Go To Top Link -->
    <a href="#" class="back-to-top">
      <i class="fa fa-arrow-up"></i>
    </a>

    <div class="loader">
      <div class="preloader2">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
      </div>
    </div>

    <!-- jQuery  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.mixitup.js"></script>
     <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/nivo-lightbox.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.countdown.js"></script>  
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.counterup.min.js"></script>   
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script> 
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/form-validator.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/contact-form-script.js"></script>  
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.themepunch.tools.min.js"></script>    
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.slicknav.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/main.js"></script>

  </body>
</html>