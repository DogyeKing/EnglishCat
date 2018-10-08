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

<title>결제내역 페이지</title>

	<%@include file="/include/header.jsp" %>

    <!-- Page Header Start -->
    <div class="page-header" style="background: url(<%=request.getContextPath()%>/assets/img/banner1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">결제내역</h2>
              <a href="<%=request.getContextPath()%>/index.jsp">account</a>
              <span>/</span>
              <span class="current">Payment Information</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page Header End --> 

    <!-- Start Content -->
    <div id="content" class="single-course">
      <div class="container">
        <div class="row">
          <div class="col-md-8">              
            <div class="single-item">
              <div class="course-item">
                <div class="up-content">
 
                </div>
                
 
<%--  				<div class="item">
                      <a href="#"><img src="<%=request.getContextPath()%>/assets/img/event/img666.jpg" alt=""></a>
                </div> --%>

                <%-- <!-- Courses Slider Start -->
                <div class="Courses-slider">
                  <div class="touch-slider owl-carousel" data-slider-pagination="true">
                    <div class="item">
                      <a href="#"><img src="<%=request.getContextPath()%>/assets/img/event/img-1.jpg" alt=""></a>
                    </div>
                    <div class="item">
                      <a href="#"><img src="<%=request.getContextPath()%>/assets/img/event/img-2.jpg" alt=""></a>
                    </div>
                    <div class="item">
                      <a href="#"><img src="<%=request.getContextPath()%>/assets/img/event/img-3.jpg" alt=""></a>
                    </div>
                  </div>
                </div> --%>
                <br>
                
                
                <!-- Courses Slider End -->
                <div class="des item-inner">
                       
                </div>
                
                <div class="des item-inner">
                  <h3>결제 내역 : </h3><br>
                  <p><b>기간 : </b> ${pay.month }/${pay.times }/${pay.minutes }</p>
                  <p><b>금액 : </b>  ${pay.paid_amount } 원</p>
                  <p><b>결제날짜 : </b>  ${pay.paid_date }</p>
                  <p><b>결제 승인번호 : </b>  ${pay.apply_num }</p>
                  <p><b>상품번호 : </b>  ${pay.merchant_uid }</p><br>
                </div>
                
                <!-- Courses Slider End -->
                <div class="des item-inner">
                 <h3>회원 정보</h3><br>
          	 	 <!-- Register Form -->
          		 
          		 
          		 <div class="form-group">
     				<input class="form-control" type="hidden" name="user_pid" id="user_pid" value="${member.user_pid}" maxlength="15"/>
                </div>       
          		 
                <div class="form-group">
                	<label class="form-control-label">ID</label>
     				<input class="form-control" type="text" name="user_id" id="user_id" maxlength="15" value="${member.user_id}"/>
                </div>              
      
                <div class="form-group">
                <label class="form-control-label">Name</label>
                  <input class="form-control" type="text" name="user_name" id="user_name" maxlength="10" value="${member.user_name}" readonly>
                </div>    
                
                <div class="form-group">
                <label class="form-control-label">Phone</label>
                	<input class="form-control" type="text" name="user_phone" id="user_phone" maxlength="15" value="${member.user_phone}" readonly onkeypress="return fn_press(event, 'numbers');" onkeydown="fn_press_han(this);" style="ime-mode:disabled;"/>

                </div>
                
                <div class="form-group">
                 <label class="form-control-label">Email</label>	
                  <input class="form-control" type="Email" name="user_mail" id="user_mail" maxlength="20" value="${member.user_mail}" readonly>
                </div> 

                </div>
                
                <!-- Courses Slider End -->
                <div class="des item-inner">
                  
                </div>
                   
              </div>
            </div>
          </div>

		<!--Sidebar-->
          <aside id="sidebar" class="col-md-4">
            <!-- <div class="course-information">
              <div class="widget-heading">
                <h4>Course Information</h4>
              </div>
              <ul>
                <li>
                <span>Starts:</span>November 22, 2016 </li> 
                <li><span>Duration:</span>8 Weeks</li>
                <li><span>Study Level:</span>Intermediate</li>
                <li><span>Discipline</span>
                <a href="#">Other Courses</a>,
                <a href="#">Tech Courses</a></li>
                <li class="clearfix">
                  <span>Price:</span>
                  <span class="amount">$45.00</span>
                </li>   
              </ul>
              <a class="btn btn-common">Purchase Course</a>
            </div> -->

            
            <!-- Categories Widget -->
            <div class="widget widget-categories">
              <h5 class="widget-title">Categories</h5>
              <ul class="cat-list">
                <li>
                  <i class="fa fa-angle-right"></i><a href="<%=request.getContextPath()%>/about/fee.jsp">수강료 안내</a>
                </li>               
                <li>
                  <i class="fa fa-angle-right"></i><a href="<%=request.getContextPath()%>/apply/application.jsp">수강신청</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="<%=request.getContextPath()%>/board/faqList.jsp">FAQ</a>
                </li>
               
              </ul>
            </div>

          </aside>
          <!--End sidebar-->

        </div>
      </div>
    </div>
    <!-- End Content -->
    
    <!-- Start Map Section -->
    <div id="" class="container">
    <img src="<%=request.getContextPath()%>/assets/img/apply/img1.jpg">
    </div>
    <!-- End Map Section -->

    

    <!-- Footer Section -->
    
    <%@include file="/include/footer.jsp" %>
    
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


	<!-- jQuery Section -->
	<%@include file="/include/jquery.jsp" %>
	
	<!-- jQuery Section End-->

  </body>
</html>

    <!-- Go To Top Link -->
    <a href="#" class="back-to-top">
      <i class="fa fa-arrow-up"></i>
    </a>


  </body>
</html>