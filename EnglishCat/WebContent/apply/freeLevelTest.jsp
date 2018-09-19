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
                  <input type="text" class="form-control" id="name" name="name" placeholder="이름:" required data-error="이름을 입력하세요.">
                  <div class="help-block with-errors"></div>
                </div>
                <div class="col-md-6">
                  <input type="email" class="form-control" id="age" placeholder="나이:" required data-error="나이를 입력하세요">
                  <div class="help-block with-errors"></div>
                </div>          
               <div class="col-md-6">
                  <input type="text" class="form-control" id="phone" name="phone" placeholder="전화번호:" required data-error="전화번호를 입력하세요">
                  <div class="help-block with-errors"></div>
                </div>
                <div class="col-md-6">
                  <input type="email" class="form-control" id="email" placeholder="이메일:" required data-error="이메일을 입력하세요">
                  <div class="help-block with-errors"></div>
                </div>            
                <div class="col-md-12">
                  <textarea class="form-control" placeholder="원하시는 날짜,시간 입력 ex(2018-09-18, 18:00)" rows="9" required data-error="원하시는 날짜, 시간을 반드시 입력하세요"></textarea>
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
            <h2 class="medium-title">무료체험 신청시 주의 사항</h2>   
            <div class="information"> 

   
<p>1. 수업을 위해서는 반드시 스카이프 설치와 회원가입이 필요합니다.</p>  
<p>2. 스카이프의 아이디는 스카이프 회원가입 하실 때 등록하신 전화번호 또는 이메일주소입니다.</p>
<p>3. 무료수업 신청 이후, 확인이 되면 확인문자가 전달됩니다. 너무 갑작스런 신청은 누락이 될 수 있으며 적어도 1시간 이전에 신청 부탁 드립니다.</p>
<p>4. 수업 시작 적어도 5분전에 스카이프에 입장하시기 바랍니다.</p>
<p>5. 수업은 PC, 노트북, 패드, 모바일에서 모두 가능합니다.</p>
<p>6.  PC로 진행하실 경우, 웹카메라, 마이크 달린 헤드셋이 추가로 필요합니다.</p>
<p>7. 스카이프 프로그램을 설치하신 후 마이크 혹은 화상카메라 정상 작동 여부를 반드시 확인해주시기 바랍니다.</p>
<p>8. 무료체험 수업 신청시 스카이프 아이디가 없으신 분들은 수업 전 010-9363-7923 또는 카톡 아이디 englishcat으로 전달부탁드립니다.</p>
                        
              <div class="contact-datails">
                <p><i class="fa fa-phone"></i>   051 753 5600</p>
                <p><i class="fa fa-envelope"></i> hello@brightuniversity.edu</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Content Section  -->


    <!-- Start Map Section -->
    <div class="container">
    <img src="<%=request.getContextPath()%>/assets/img/apply/img1.jpg">
    </div>
    <!-- End Map Section -->

	<!-- Footer Section -->
	<jsp:include page="/include/footer.jsp" />
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-arrow-up"></i>
	</a>

	<div class="loader">
		<div class="preloader2">
			<span></span> <span></span> <span></span> <span></span> <span></span>
		</div>
	</div>

	<!-- jQuery  -->
	<%@include file="/include/jquery.jsp"%>

  </body>
</html>