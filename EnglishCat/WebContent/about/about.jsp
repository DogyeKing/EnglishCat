
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
    <title>Bright – Bootstrap HTML5 Education Template</title>
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
                  <span><a href="login.html"><i class="fa fa-user"></i> Login</a> / <a href="login.html">Register</a></span>
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
              <a class="navbar-brand" href="index.html"><img src="<%=request.getContextPath()%>/assets/img/logo.png" alt=""></a>
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
                  <a href="index.html" data-toggle="dropdown">Home <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="index.html">Home Page 1</a></li>    
                    <li><a href="index-1.html">Home Page 2</a></li>     
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Courses <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="courses-list.html">Courses List</a></li>    
                    <li><a href="courses-grid.html">Courses Grid</a></li>  
                    <li><a href="courses-single.html">Single Course</a></li>   
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a class="active" href="#" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a class="active" href="about.html">About Page</a></li>                     
                    <li><a href="gallery.html">Image Gallery</a></li>
                    <li><a href="faq.html">FAQ</a></li>    
                    <li><a href="login.html">Login Page</a></li> 
                    <li><a href="single-teacher.html">Single Teacher</a></li> 
                    <li><a href="registration.html">Registration Form</a></li> 
                    <li><a href="contact.html">Contacts</a></li> 
                    <li><a href="404.html">404</a></li> 
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Events <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="event-grid.html">Events Grid</a></li>                     
                    <li><a href="event.html">Single Event</a></li>
                  </ul>                        
                </li> 
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">Blog <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="blog.html">Blog - Right Sidebar</a></li>                     
                    <li><a href="blog-left-sidebar.html">Blog - Left Sidebar</a></li>
                    <li><a href="blog-full-width.html">Blog - Full Width</a></li>   
                    <li><a href="single-post.html">Blog Single Post</a></li>   
                  </ul>                        
                </li>              
                <li><a href="contact.html">Contact</a></li>
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
                <a href="index.html">Home</a>
                <ul>
                  <li><a href="index.html">Home Page 1</a></li>    
                  <li><a href="index-1.html">Home Page 2</a></li>     
                </ul>                        
              </li>
              <li>
                <a href="#">Courses</a>
                <ul>
                  <li><a href="courses-list.html">Courses List</a></li>    
                  <li><a href="courses-grid.html">Courses Grid</a></li>  
                  <li><a href="courses-single.html">Single Course</a></li>   
                </ul>                        
              </li>
              <li>
                <a class="active" href="#">Pages</a>
                <ul>
                  <li><a class="active" href="about.html">About Page</a></li>                     
                  <li><a href="gallery.html">Image Gallery</a></li>
                  <li><a href="faq.html">FAQ</a></li>    
                  <li><a href="login.html">Login Page</a></li> 
                  <li><a href="single-teacher.html">Single Teacher</a></li> 
                  <li><a href="registration.html">Registration Form</a></li> 
                  <li><a href="contact.html">Contacts</a></li> 
                  <li><a href="404.html">404</a></li> 
                </ul>                        
              </li>
              <li>
                <a href="#">Events</a>
                <ul>
                  <li><a href="event-grid.html">Events Grid</a></li>                     
                  <li><a href="event.html">Single Event</a></li>
                </ul>                        
              </li> 
              <li>
                <a href="#">Blog</a>
                <ul>
                  <li><a href="blog.html">Blog - Right Sidebar</a></li>                     
                  <li><a href="blog-left-sidebar.html">Blog - Left Sidebar</a></li>
                  <li><a href="blog-full-width.html">Blog - Full Width</a></li>   
                  <li><a href="single-post.html">Blog Single Post</a></li>   
                </ul>                        
              </li>              
              <li><a href="contact.html">Contact</a></li>
            </ul>
            <!-- Mobile Menu End -->

          </div>
      </nav>
      <!-- Navbar End -->

    </header>
    <!-- Header area wrapper End -->

    <!-- Page Header Start -->
    <div class="page-header" style="background: url(<%=request.getContextPath()%>/assets/img/banner1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">About Us</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">About Us</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page Header End --> 

    <!-- About Us section Start -->
    <div class="about section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="about-header">
                <h3 class="medium-title">Welecome To Bright University</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias laudantium nemo eveniet excepturi, suscipit amet illo autem quasi, sequi illum quisquam doloremque est magni accusamus quo, officia voluptates temporibus cum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </div>
            <ul class="info-list">
              <li><a href="#"><i class="fa fa-check"></i> Narwhal quinoa sriacha organic.</a></li>
              <li><a href="#"><i class="fa fa-check"></i> Artisan paleo flannel, polaroid umami franzen.</a></li>
              <li><a href="#"><i class="fa fa-check"></i> Sriracha vegan typewriter tofu gentrify.</a></li>
            </ul>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="img-thumb">
                <img src="<%=request.getContextPath()%>/assets/img/about/img1.jpg" alt="">
            </div>
        </div>
        </div>
      </div>
    </div>
    <!-- About Us section End -->   

    <!-- Why Choose Us Section Start -->
    <section class="why-choose-us section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="video">
              <iframe width="560" height="365" src="https://www.youtube.com/embed/LuJKrTGKFpI" frameborder="0" allowfullscreen></iframe>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="why-us-content">
              <h3 class="medium-title">What Students say</h3>
              <!-- accordion start -->
              <div class="accordion-group" id="accordion">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                        We have a team of experienced teachers
                      </a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                      <div class="panel-body">
                        <p>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis eius quod minima unde quisquam cum ducimus, quasi commodi porro! 
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                          Diversity training programs, curriculum understandable
                        </a>
                      </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis eius quod minima unde quisquam cum ducimus, quasi commodi porro!
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                          Learn everywhere, everytime on devices
                        </a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis eius quod minima unde quisquam cum ducimus, quasi commodi porro!
                        </p>
                      </div>
                    </div>                  
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapsefour">
                          Brightcation promotion programs for outstanding students
                        </a>
                      </h4>
                    </div>
                    <div id="collapsefour" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>
                          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis eius quod minima unde quisquam cum ducimus, quasi commodi porro!
                        </p>
                      </div>
                    </div>                  
                  </div>
                </div>              
                <!-- accordion End -->
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Why Choose Us Section End -->

    <!-- Teacher Section Start -->
    <section class="teacher section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="section-title" data-wow-delay="0s">Our Great Teachers</h2>
          </div> 
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="teacher-item wow fadeIn" data-wow-delay="0.1s">
              <div class="thumb-teacher">
                <img src="<%=request.getContextPath()%>/assets/img/teacher/img-1.png" alt="">
              </div>
              <div class="teacher-desc">
                <h3><a href="teachers.html">Julia Benjama</a></h3>
                <span>Math Teacher</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex ea qui, voluptas vitae pariatur nihil odit.</p>
                <div class="social-icon">
                  <a class="social" href="#"><i class="fa fa-twitter"></i></a>
                  <a class="social" href="#"><i class="fa fa-facebook"></i></a>                  
                  <a class="social" href="#"><i class="fa fa-google-plus"></i></a>
                  <a class="social" href="#"><i class="fa fa-pinterest"></i></a>
                </div>
              </div>              
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="teacher-item wow fadeIn" data-wow-delay="0.3s">
              <div class="thumb-teacher">
                <img src="<%=request.getContextPath()%>/assets/img/teacher/img-2.png" alt="">
              </div>
              <div class="teacher-desc">
                <h3><a href="teachers.html">Jen Maroney</a></h3>
                <span>English Teacher</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex ea qui, voluptas vitae pariatur nihil odit.</p>
                <div class="social-icon">
                  <a class="social" href="#"><i class="fa fa-twitter"></i></a>
                  <a class="social" href="#"><i class="fa fa-facebook"></i></a>                  
                  <a class="social" href="#"><i class="fa fa-google-plus"></i></a>
                  <a class="social" href="#"><i class="fa fa-pinterest"></i></a>
                </div>
              </div>              
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="teacher-item wow fadeIn" data-wow-delay="0.5s">
              <div class="thumb-teacher">
                <img src="<%=request.getContextPath()%>/assets/img/teacher/img-3.png" alt="">
              </div>
              <div class="teacher-desc">
                <h3><a href="teachers.html">Sarah Robert</a></h3>
                <span>Social Maketing</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex ea qui, voluptas vitae pariatur nihil odit.</p>
                <div class="social-icon">
                  <a class="social" href="#"><i class="fa fa-twitter"></i></a>
                  <a class="social" href="#"><i class="fa fa-facebook"></i></a>                  
                  <a class="social" href="#"><i class="fa fa-google-plus"></i></a>
                  <a class="social" href="#"><i class="fa fa-pinterest"></i></a>
                </div>
              </div>              
            </div>
          </div>  
        </div>
      </div>
    </section>
    <!-- Teacher Section End -->

    <!-- Start Call to Action Section -->
    <div class="cta">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-8">
            <h3>Locavore food truck cornhole sustainable paleo hella.</h3>
          </div>
          <div class="col-md-4 col-sm-4">
            <a href="#" class="btn btn-border">BUY NOW</a>
          </div>
        </div>
      </div>
    </div>
    <!-- End Call to Action Section -->

 <jsp:include page="/include/footer.jsp"/>
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