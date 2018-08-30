<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
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
                  <span><a href="<%=request.getContextPath()%>/account/login.jsp"><i class="fa fa-user"></i> Login</a> / <a href="<%=request.getContextPath()%>/account/login.html">Register</a></span>
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
              <a class="navbar-brand" href="index.jsp"><img src="<%=request.getContextPath()%>/assets/img/logo.png" alt=""></a>
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
                  <a href="#" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="about.html">About Page</a></li>                     
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
                  <a class="active" href="#" data-toggle="dropdown">Blog <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a class="active" href="blog.html">Blog - Right Sidebar</a></li>                     
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
                <a href="#">Pages</a>
                <ul>
                  <li><a href="about.html">About Page</a></li>                     
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
                <a class="active" href="#">Blog</a>
                <ul>
                  <li><a class="active" href="blog.html">Blog - Right Sidebar</a></li>                     
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
    <div class="page-header" style="background: url(assets/img/banner1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">Blog</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">blog</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page Header End --> 

    <!-- Start Content -->
    <div id="content">
      <div class="container">
        <div class="row">
          <!-- Start Blog Posts -->
          <div class="col-md-8">          

            <!-- Start Post -->
            <div class="blog-post">
              <!-- Post feature-inner -->
              <div class="feature-inner">
                <a class="lightbox" href="<%=request.getContextPath()%>/assets/img/blog/post-1.jpg"><img src="<%=request.getContextPath()%>/assets/img/blog/post-1.jpg" alt=""></a>
              </div>
              <!-- End Post feature-inner -->
              
              <!-- Post Content -->
              <div class="post-content"> 
                <div class="author-name">By <a href="#">Maria Hernandez</a></div>
                <h3 class="post-title"><a href="single-post.html">Irony cred flexitarian craft beer organic</a></h3>
                <div class="meta"> 
                  <span class="meta-part"><a href="#"><i class="fa fa-clock-o"></i> May 30, 2017</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-bookmark"></i>CSS, Print, Techniques</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-commenting"></i> 10 Comments</a></span>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore reiciendis fuga eum nulla impedit quibusdam eaque laborum totam veritatis quae eveniet rerum consequatur id dolores blanditiis vero error, expedita saepe! consectetur adipisicing elit. Aut est ea obcaecati fuga! Repellendus ad possimus autem nisi voluptate debitis, tenetur et! Eius temporibus, error, laboriosam dicta facilis provident quos.</p>
              </div>
              <!-- Post Content -->

              <!-- Read btn -->
              <div class="read-btn">                
                <a class="btn btn-common" href="single-post.html">Read More <i class="fa fa-angle-right"></i></a>
              </div>
            </div>
            <!-- End Post -->

            <!-- Start Post -->
            <div class="blog-post">
              <!-- Post feature-inner -->
              <div class="feature-inner">
                <div class="touch-slider owl-carousel" data-slider-pagination="true">
                  <div class="item">
                    <a class="lightbox" href="<%=request.getContextPath()%>/assets/img/blog/post-1.jpg"><img src="<%=request.getContextPath()%>/assets/img/blog/post-3.jpg" alt=""></a>
                  </div>
                  <div class="item">
                    <a class="lightbox" href="<%=request.getContextPath()%>/assets/img/blog/post-2.jpg"><img src="<%=request.getContextPath()%>/assets/img/blog/post-2.jpg" alt=""></a>
                  </div>
                  <div class="item">
                    <a class="lightbox" href="<%=request.getContextPath()%>/assets/img/blog/post-3.jpg"><img src="<%=request.getContextPath()%>/assets/img/blog/post-1.jpg" alt=""></a>
                  </div>
                </div>
              </div>
              <!-- End Post feature-inner -->
              
              <!-- Post Content -->
              <div class="post-content"> 
                <div class="author-name">By <a href="#">Maria Hernandez</a></div>
                <h3 class="post-title"><a href="single-post.html">Irony cred flexitarian craft beer organic</a></h3>
                <div class="meta"> 
                  <span class="meta-part"><a href="#"><i class="fa fa-clock-o"></i> May 30, 2017</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-bookmark"></i>CSS, Print, Techniques</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-commenting"></i> 10 Comments</a></span>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore reiciendis fuga eum nulla impedit quibusdam eaque laborum totam veritatis quae eveniet rerum consequatur id dolores blanditiis vero error, expedita saepe! consectetur adipisicing elit. Aut est ea obcaecati fuga! Repellendus ad possimus autem nisi voluptate debitis, tenetur et! Eius temporibus, error, laboriosam dicta facilis provident quos.</p>
              </div>
              <!-- Post Content -->

              <!-- Read btn -->
              <div class="read-btn">                
                <a class="btn btn-common" href="single-post.html">Read More <i class="fa fa-angle-right"></i></a>
              </div>
            </div>
            <!-- End Post -->

            <!-- Start Post -->
            <div class="blog-post">
              <!-- Post feature-inner -->
              <div class="feature-inner">
                <a class="lightbox" href="<%=request.getContextPath()%>/assets/img/blog/post-2.jpg"><img src="<%=request.getContextPath()%>/assets/img/blog/post-2.jpg" alt=""></a>
              </div>
              <!-- End Post feature-inner -->
              
              <!-- Post Content -->
              <div class="post-content"> 
                <div class="author-name">By <a href="#">Maria Hernandez</a></div>
                <h3 class="post-title"><a href="single-post.html">Irony cred flexitarian craft beer organic</a></h3>
                <div class="meta"> 
                  <span class="meta-part"><a href="#"><i class="fa fa-clock-o"></i> May 30, 2017</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-bookmark"></i>CSS, Print, Techniques</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-commenting"></i> 10 Comments</a></span>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore reiciendis fuga eum nulla impedit quibusdam eaque laborum totam veritatis quae eveniet rerum consequatur id dolores blanditiis vero error, expedita saepe! consectetur adipisicing elit. Aut est ea obcaecati fuga! Repellendus ad possimus autem nisi voluptate debitis, tenetur et! Eius temporibus, error, laboriosam dicta facilis provident quos.</p>
              </div>
              <!-- Post Content -->

              <!-- Read btn -->
              <div class="read-btn">                
                <a class="btn btn-common" href="single-post.html">Read More <i class="fa fa-angle-right"></i></a>
              </div>
            </div>
            <!-- End Post --> 

            <!-- Start Post -->
            <div class="blog-post">
              <!-- Post feature-inner -->
              <div class="feature-inner">
                <a class="lightbox" href="<%=request.getContextPath()%>/assets/img/blog/post-3.jpg"><img src="<%=request.getContextPath()%>/assets/img/blog/post-3.jpg" alt=""></a>
              </div>
              <!-- End Post feature-inner -->
              
              <!-- Post Content -->
              <div class="post-content"> 
                <div class="author-name">By <a href="#">Maria Hernandez</a></div>
                <h3 class="post-title"><a href="single-post.html">Irony cred flexitarian craft beer organic</a></h3>
                <div class="meta"> 
                  <span class="meta-part"><a href="#"><i class="fa fa-clock-o"></i> May 30, 2017</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-bookmark"></i>CSS, Print, Techniques</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-commenting"></i> 10 Comments</a></span>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore reiciendis fuga eum nulla impedit quibusdam eaque laborum totam veritatis quae eveniet rerum consequatur id dolores blanditiis vero error, expedita saepe! consectetur adipisicing elit. Aut est ea obcaecati fuga! Repellendus ad possimus autem nisi voluptate debitis, tenetur et! Eius temporibus, error, laboriosam dicta facilis provident quos.</p>
              </div>
              <!-- Post Content -->

              <!-- Read btn -->
              <div class="read-btn">                
                <a class="btn btn-common" href="single-post.html">Read More <i class="fa fa-angle-right"></i></a>
              </div>
            </div>
            <!-- End Post -->

            <!-- Start Pagination -->
            <div class="pagination-bar">
              <ul class="pagination">
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a class="pagination-btn" href="#">Next »</a></li>
              </ul>
            </div>
            <!-- End Pagination -->
          </div>
          <!-- End Blog Posts -->

          <!--Sidebar-->
          <aside id="sidebar" class="col-md-4 right-sidebar">
            <!-- Search Widget -->
            <div class="widget widget-search">
              <form action="#">
                <input class="form-control" type="search" placeholder="Search..." />
                <button class="search-btn" type="submit"><i class="fa fa-search"></i></button>
              </form>
            </div>
          
            <!-- Categories Widget -->
            <div class="widget widget-categories">
              <h5 class="widget-title">Categories</h5>
              <ul class="cat-list">
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">Freebies</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">Site Template</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">Online Market</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">Typography</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">Inspirations</a>
                </li>
              </ul>
            </div>

            <!-- Popular Posts widget -->
            <div class="widget widget-popular-posts">
              <h5 class="widget-title">Popular Posts</h5>
              <ul class="posts-list">
                <li>
                  <div class="widget-thumb">
                    <a href="#"><img src="<%=request.getContextPath()%>/assets/img/blog/thumb-post1.jpg" alt="" /></a>
                  </div>
                  <div class="widget-content">
                    <span>Jun 1, 2017</span>
                    <a href="#">Female Caucasian Insructor</a>
                  </div>
                  <div class="clearfix"></div>
                </li>
                <li>
                  <div class="widget-thumb">
                    <a href="#"><img src="<%=request.getContextPath()%>/assets/img/blog/thumb-post2.jpg" alt="" /></a>
                  </div>
                  <div class="widget-content">
                    <span>Jun 1, 2017</span>
                    <a href="#">Female Caucasian Insructor</a>
                  </div>
                  <div class="clearfix"></div>
                </li>
                <li>
                  <div class="widget-thumb">
                    <a href="#"><img src="<%=request.getContextPath()%>/assets/img/blog/thumb-post3.jpg" alt="" /></a>
                  </div>
                  <div class="widget-content">
                    <span>Jun 1, 2017</span>
                    <a href="#">Female Caucasian Insructor</a>
                  </div>
                  <div class="clearfix"></div>
                </li>
              </ul>
            </div>

            <!-- Archives Widget -->
            <div class="widget widget-archives">
              <h5 class="widget-title">Archives</h5>
              <ul class="cat-list">
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">Janauary 2017</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">Fabruary 2017</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">March 2017</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">April 2017</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">May 2017</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="#">June 2017</a>
                </li>
              </ul>
            </div>

            <!-- Tag Media -->
            <div class="widget tag">
              <h5 class="widget-title">Tags</h5>
              <a href="#">Wordpress</a>
              <a href="#">psd template</a>
              <a href="#">responsive</a>
              <a href="#">photography</a>                  
              <a href="#">tools</a>
              <a href="#">HTML5</a>
              <a href="#">workflow</a>
              <a href="#">web development</a>
              <a href="#">life style</a>
            </div>

            <!-- Recent Work -->
            <div class="widget recent-work">
              <h5 class="widget-title">Recent Work</h5>
              <div class="flickr">
                <ul>
                  <li>
                    <a href="#"><img src="<%=request.getContextPath()%>/assets/img/blog/thumb1.jpg" alt=""></a>
                  </li>
                  <li>                    
                    <a href="#"><img src="<%=request.getContextPath()%>/assets/img/blog/thumb2.jpg" alt=""></a>
                  </li>
                  <li>                    
                    <a href="#"><img src="<%=request.getContextPath()%>/assets/img/blog/thumb3.jpg" alt=""></a>
                  </li>
                  <li>                    
                    <a href="#"><img src="<%=request.getContextPath()%>/assets/img/blog/thumb4.jpg" alt=""></a>
                  </li>
                  <li>                    
                    <a href="#"><img src="<%=request.getContextPath()%>/assets/img/blog/thumb5.jpg" alt=""></a>
                  </li>
                  <li>                    
                    <a href="#"><img src="<%=request.getContextPath()%>/assets/img/blog/thumb6.jpg" alt=""></a>
                  </li>
                </ul>           
              </div>
            </div>         

          </aside>
          <!--End sidebar-->
        </div>
      </div>
    </div>
    <!-- End Content -->

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
                <a href="<%=request.getContextPath()%>/assets/img/flicker/img1.jpg" class="lightbox">
                <img alt="" src="<%=request.getContextPath()%>/assets/img/flicker/img1.jpg">
                </a>
                <p class="text">Fightin'the system like true modern <br><span>Nov 05,2016</span></p>
              </li>
              <li class="post">
                <a href="<%=request.getContextPath()%>/assets/img/flicker/img1.jpg" class="lightbox">
                <img alt="" src="<%=request.getContextPath()%>/assets/img/flicker/img2.jpg">
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
              <a href="#" title="Pan Masala"><img src="<%=request.getContextPath()%>/assets/img/flicker/img1.jpg" alt=""></a>
              <a href="#" title="Sports Template for Joomla"><img src="<%=request.getContextPath()%>/assets/img/flicker/img2.jpg" alt=""></a>
              <a href="" title="Apple Keyboard"><img src="<%=request.getContextPath()%>/assets/img/flicker/img3.jpg" alt=""></a>
              <a href="" title="Hard Working"><img src="<%=request.getContextPath()%>/assets/img/flicker/img4.jpg" alt=""></a>
              <a href="" title="Smile"><img src="<%=request.getContextPath()%>/assets/img/flicker/img5.jpg" alt=""></a>
              <a href="" title="Puzzle"><img src="<%=request.getContextPath()%>/assets/img/flicker/img6.jpg" alt=""></a>
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
                © All rights reserved 2017 - Design &amp; Developed by <a href="http://graygrids.com">GrayGrids</a>
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