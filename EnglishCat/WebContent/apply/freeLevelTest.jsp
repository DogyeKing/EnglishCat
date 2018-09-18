<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head id="ctl00_Head1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Bright">

    <!-- Google Maps -->
    <style>
      #google-map,
      body,
      html {
        padding: 0;
        height: 400px;
      }
    </style>
    
  </head>
  <body>
    
    <%@include file="/include/header.jsp" %>

    <!-- Page Header Start -->
    <div class="page-header" style="background: url(<%=request.getContextPath()%>/assets/img/banner1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">무료체험 신청</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">Free Class</span>
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
          <div class="col-md-6">
            <h2 class="medium-title">무료체험 신청서</h2>   
            <!-- Form -->
            <form id="contactForm" class="contact-form" data-toggle="validator">
              <div class="row">
                <div class="col-md-6">
                  <input type="text" class="form-control" id="name" name="name" placeholder="Name:" required data-error="Please enter your name">
                  <div class="help-block with-errors"></div>
                </div>
                <div class="col-md-6">
                  <input type="email" class="form-control" id="email" placeholder="Email:" required data-error="Please enter your email">
                  <div class="help-block with-errors"></div>
                </div>                   
                <div class="col-md-12">
                  <textarea class="form-control" placeholder="원하시는 날짜,시간 입력 ex(2018-09-18, 18:00)" rows="9" required data-error="Write your message"></textarea>
                  <div class="help-block with-errors"></div>
                </div>
                <div class="col-md-6">
                  <button type="submit" id="submit" class="btn btn-common">Send Now</button>
                  <div id="msgSubmit" class="hidden"></div> 
                  <div class="clearfix"></div>  
                </div>
              </div> 
            </form>
          </div>
          <div class="col-md-6">
            <h2 class="medium-title">Contact Info</h2>   
            <div class="information"> 
              <p>Aliquet  id nunc cubilia sit enim fusce lacus enim nec, sed integer ac malesuada lectus etiam metus.</p>
              <p>Aliquet  id nunc cubilia sit enim fusce lacus enim nec, sed integer ac malesuada lectus etiam metus.</p>             
              <div class="contact-datails">
                <p><i class="fa fa-map-marker"></i>  Sydney NSW 2052, Australia</p>
                <p><i class="fa fa-phone"></i>  +61 2 9385 1000</p>
                <p><i class="fa fa-envelope"></i> hello@brightuniversity.edu</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Content Section  -->

    

	<!-- Footer Section -->

	<jsp:include page="/include/footer.jsp" />
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-arrow-up"></i>
	</a>

	<!-- <div class="loader">
		<div class="preloader2">
			<span></span> <span></span> <span></span> <span></span> <span></span>
		</div>
	</div> -->

	<!-- jQuery  -->
	<%@include file="/include/jquery.jsp"%>

  </body>
</html>