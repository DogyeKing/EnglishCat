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

  <!-- navigation -->


  </head>

  <body>
    
    <!-- Header area wrapper Starts -->
   
  <%@include file="../include/header.jsp" %>
   
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
    <%@include file="../include/jquery.jsp" %>

  </body>
</html>