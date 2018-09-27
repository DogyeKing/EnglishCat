<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>

	<%@include file="/include/header.jsp" %>
	
    <!-- Page Header Start -->
    <div class="page-header" style="background: url(<%=request.getContextPath()%>/assets/img/banner1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">레벨테스트</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">Level Test</span>
            </div>
          </div>
        </div>
      </div>
   </div>
  </head>
    <!-- Page Header End --> 
 <body>
    <!-- Start Content -->
    
    <div id="content">
      <div class="container">
        <div class="row">
          
          <!-- Start Blog Posts -->
          <div class="col-md-8 col-md-offset-2">         

            <!-- Start Post -->
            <div class="blog-post">
              <!-- Post feature-inner -->
              <div class="feature-inner">
                <a class="lightbox"><img src="<%=request.getContextPath() %>/assets/img/blog/post-1.jpg" alt=""></a>
              </div>
              <!-- End Post feature-inner -->
              
              <!-- Post Content -->
              <div class="post-content"><br><br> 

                <p>안녕하세요, ${member.user_name}님</p>
                <p>레벨테스트 문항은 총 20문제 입니다.</p>
                <p>아래의 버튼을 클릭하시면 레벨 테스트가 시작됩니다.</p>
              </div>
              
              <div>
              
              </div>
              <!-- Post Content -->
            </div>
            </div>
   
            <!-- End Post -->
 
        </div>
      </div>
    </div>
    <div class="read-btn" align="center">                
       <a class="btn btn-common" href="#" onclick="window.open('apply/levelTestAll.jsp','_blank','width=800, height=600, top=50, left=50')">레벨 테스트 시작 <i class="fa fa-angle-right"></i></a><br><br>
    </div>
   <!-- <button class="btn btn-common" type="submit" id="submit" onclick="goLevel()">레벨 테스트 start <i class="fa fa-angle-right"></i></button> -->
    <br><br><br>
    
    <!-- End Content -->
    
<%--      <div class="container">
    <img src="<%=request.getContextPath()%>/assets/img/apply/img1.jpg">
    </div> --%>
   
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