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
    <title>Junior Course</title>

  </head>
  <body>
    
       <!-- navigation -->
   
  <%@include file="../include/header.jsp" %>

    <!-- Page Header Start -->
    <div class="page-header" style="background: url(<%=request.getContextPath()%>/assets/img/banner1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">시니어 과정</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">Senior Course</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page Header End --> 

    <!-- Courses Section Start -->
    <section class="courses section">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-11.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 3 Years</p>
                                <span class="price">$2000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">Romeo</a>, <a href="#">Head Teacher</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher2.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Pre-Level</a></h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.Repellendus,…</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-22.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 4 Years</p>
                                <span class="price">$3000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">Jana Smith</a>, <a href="#">Kiwhi Leonard</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-2.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Beginner</a></h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.Repellendus,…</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-33.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 3 Years</p>
                                <span class="price">$2000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">jana Smith</a>, <a href="#">Maria Bella</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-3.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Intermediate</a></h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.Repellendus,…</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-44.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 3 Years</p>
                                <span class="price">$2000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">Maria Bella</a>, <a href="#">Jana Smith</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-1.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Middle-Intermediate</a></h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.Repellendus,…</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-55.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 4 Years</p>
                                <span class="price">$3000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">Jana Smith</a>, <a href="#">Kiwhi Leonard</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-2.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">High-Intermediate</a></h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.Repellendus,…</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-66.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 3 Years</p>
                                <span class="price">$2000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">jana Smith</a>, <a href="#">Maria Bella</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-3.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Advance</a></h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.Repellendus,…</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Courses Section End -->

    <!-- Footer Section -->
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