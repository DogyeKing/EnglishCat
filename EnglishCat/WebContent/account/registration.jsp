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
    
    <!-- navigation -->

  <%@include file="../include/header.jsp" %>
    

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
            <form class="register-form" name="form" role="form" method="post" action="<%=request.getContextPath()%>/member?cmd=member_register" onsubmit="return hangulCheck(this)">
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
     					<button class="btn btn-warning pull-right" type="button" onclick="goPopup()">Search Korean Address</button>
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
 <%@include file="../include/footer.jsp" %>

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