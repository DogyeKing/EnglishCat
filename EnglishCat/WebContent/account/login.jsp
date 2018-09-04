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
              <h2 class="page-title">로그인</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">Login</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page Header End --> 

    <!-- Start Content Section -->

       <br>
       <br>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h2 class="medium-title">Login</h2>   
            <!-- Form -->
            <form method="post" class="login" action="<%=request.getContextPath()%>/member?cmd=member_login" onsubmit="return hangulCheck(this)">                
              <div class="form-group">
                <label for="username">User ID <span class="required">*</span></label>
                <input class="form-control" name="user_id" id="username" maxlength="20" type="text" required autofocus>
              </div>
              <div class="form-group">
                <label for="password">Password <span class="required">*</span></label>
                <input class="form-control" name="user_pass" id="password" type="password" required>
              </div>              
              <div class="form-group">
                <label for="rememberme" class="inline">
                <input name="rememberme" id="rememberme" type="checkbox" value="on">Remember me</label>
                <a href="#">Lost your password?</a>
              </div>
              <button type="submit" id="submit" class="btn btn-common">Login</button>    
            </form>
          </div>
       
       
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="img-thumb">
                <img src="<%=request.getContextPath()%>/assets/img/login/login4.jpg" alt="">
            </div>
        </div>
        </div>
      </div>
    </section>
           <br>
       <br>
       <br>       <br>
       <br>


    <!-- End Content Section  -->

<!-- Start Call to Action Section -->
  <!--   <div class="cta">
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
    End Call to Action Section  -->

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