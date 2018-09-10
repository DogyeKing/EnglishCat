<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- 네이버로그인 임포트 시도중 -->
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

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
            
            
            <!-- 네이버 아이디 로그인 시도중 -->
            <div id="naver_id_login"></div>
			<script type="text/javascript"
					src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
					charset="utf-8"></script>
			
			<script type="text/javascript">
					var clientId = "UF9JmYLiZGmrawFZDLar";
					var callbackUrl = "http://localhost:8000/EnglishCat/account/callback.jsp";
					var naver_id_login = new naver_id_login(clientId, callbackUrl);
					var state = naver_id_login.getUniqState();
					naver_id_login.setButton("white", 3, 40);
					naver_id_login.setDomain("localhost:8000/EnglishCat/main.jsp");
					naver_id_login.setState(state);
					naver_id_login.setPopup();
					naver_id_login.init_naver_id_login();
			</script>

            
            
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