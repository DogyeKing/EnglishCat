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


	<script src="<%=request.getContextPath()%>/assets/js/validation.js"></script>

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
    <div class="page-header" style="background: url(<%=request.getContextPath()%>/assets/img/banner1.jpg);">
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

                
     				<input class="form-control" type="text" name="user_id" id="user_id" maxlength="15" required autofocus onkeydown="fn_press_han(this);" style="ime-mode:disabled;"/>
     				<small id="checkMsg"></small>
                </div>              
                
                <div class="form-group">  
                	<label class="form-control-label">Password</label>               
     				<input class="form-control" type="password" name="user_pass" id="user_pass" maxlength="15" required>
                </div>
                
                <div class="form-group">   
                	<label class="form-control-label">Password Check</label>              
     				<input class="form-control" type="password" name="user_pass_check" id="user_pass_check" maxlength="15" required>
     				<small id="checkPwd"></small>
                </div>
                
                <div class="form-group">
                <label class="form-control-label">Name</label>
                  <input class="form-control" type="text" name="user_name" maxlength="10">
                </div>    
                
                <div class="form-group">
                <label class="form-control-label">Phone</label>
                	<input class="form-control" type="text" maxlength="15" onkeypress="return fn_press(event, 'numbers');" onkeydown="fn_press_han(this);" style="ime-mode:disabled;"/>

                  	<!-- <input class="form-control" type="tel" name="user_phone" maxlength="20"> -->
                </div>
                
                <div class="form-group">
                 <label class="form-control-label">Email</label>	
                  <input class="form-control" type="Email" name="user_mail" maxlength="20">
                </div> 
                
                <div class="form-group">
     					<label class="form-control-label">Address</label>
     					<button class="btn btn-primary pull-right" type="button" onclick="goPopup()">Search Korean Address</button>
     					<div id="list"></div>
						<div id="callBackDiv">
     					<input class="form-control form-control-lg" type="text" name="roadFullAddr" id="roadFullAddr" maxlength="20" required readonly>
     			</div>
     			</div>                 
                              
                <button class="btn btn-common" type="submit" id="submit">Create Account</button>
            </form>
     		</div>
     		
     		     <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="img-thumb">
                <img src="<%=request.getContextPath()%>/assets/img/login/regi2.jpg" alt="">
            </div>
        </div>
        </div>
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
  
  <!-- email check -->
    <script>
    
        document.getElementById("user_id").onchange = sendId;    
 
    function sendId() {
       var dom = document.getElementById("user_id");
       var result = dom.value;
       console.log("result : "+result);
       $.ajax({
         type : "POST",
         url : "<%=request.getContextPath()%>/member?cmd=member_idcheck",
        dataType : "text",
        contentType : "application/text;charset=utf-8",
        data : result,
        success : function(data){           
           var listView = document.getElementById('checkMsg');
           if(result ==''){
              listView.innerHTML = "ID를 입력해주세요";
              listView.style.color = "red";
              document.getElementById("user_id").setCustomValidity("ID를 입력해주세요.");
           } else if(data==2){
              listView.innerHTML = "사용 할 수 있는 ID 입니다";
              listView.style.color = "blue";
              document.getElementById("user_id").setCustomValidity('');
             } else if(data==1){
              listView.innerHTML = "이미 등록된 ID 입니다";
              listView.style.color = "red";
              document.getElementById("user_id").setCustomValidity("이미 존재하는 ID입니다.");
             } 
        },
        error : function(jqXHR,textStatus,errorThrown){
           console.log("에러 발생~~\n"+textStatus+":"+errorThrown);
        }
      });
    }
    
    
    
    </script>
    <!-- //email check -->
    <!-- password-script -->
    <script>
    
    document.getElementById("user_pass").onchange = checkPwd;
    document.getElementById("user_pass_check").onchange = checkPwd;
    
    function checkPwd(){
         var pw1 = document.getElementById("user_pass").value;
         var pw2 = document.getElementById("user_pass_check").value;
         console.log("pw1 : "+pw1+"& pw2 : "+pw2);
         if(pw1!=pw2){
          document.getElementById('checkPwd').style.color = "red";
          document.getElementById('checkPwd').innerHTML = "동일한 암호를 입력하세요."; 
          document.getElementById("user_pass_check").setCustomValidity("동일한 암호를 입력하세요.");
         }else{
          document.getElementById('checkPwd').style.color = "black";
          document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다.";
          document.getElementById("user_pass_check").setCustomValidity('');
         }         
   }       
    </script>
    <!-- //password-script -->
  

	<script>
	/* 숫자만 입력받기 */
    function fn_press(event, type) {
        if(type == "numbers") {
            if(event.keyCode < 48 || event.keyCode > 57) return false;
            //onKeyDown일 경우 좌, 우, tab, backspace, delete키 허용 정의 필요
        }
    }
    /* 한글입력 방지 */
    function fn_press_han(obj)
    {
        //좌우 방향키, 백스페이스, 딜리트, 탭키에 대한 예외
        if(event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode == 39
        || event.keyCode == 46 ) return;
        //obj.value = obj.value.replace(/[\a-zㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
        obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
    }

    </script>


  </body>
</html>