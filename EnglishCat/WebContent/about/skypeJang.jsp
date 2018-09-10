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
    <div class="page-header" style="background: url(<%=request.getContextPath()%>/assets/img/about/skype1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">Skype 화상영어 장점</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">Skype</span>
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
                <h3 class="medium-title">Skype 화상영어 장점은?</h3>
                <p>스카이프를 이용하면 네이티브 선생님들과 직접 얼굴을 보면서 수업을 진행할 수 있습니다.
                	때문에 선생님들과 친밀한 관계를 쌓을 수 있으며 더 편안한 분위기에서 수업을 진행 할 수 있습니다.
                	또 스카이프를 무료로 사용한다는 장점때문에 일반 전화 영어에 비해 합리적인 수강료 책정을
                	할 수 있습니다.</p>
            </div>
            <ul class="info-list">
              <li><a href="#"><i class="fa fa-check"></i> 다른 메신저들에 비해 깨끗한 음질로 통화를 할 수 있습니다.</a></li>
              <li><a href="#"><i class="fa fa-check"></i> 수강생의 니즈에 맞춰 화상수업이나, 음성수업을 선택 할 수 있습니다.</a></li>
              <li><a href="#"><i class="fa fa-check"></i> 녹음 기능으로 수업내용을 직접 복습하여 자신의 영어를 객관적으로 체크할 수 있습니다.</a></li>
            </ul>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="img-thumb">
                <img src="<%=request.getContextPath()%>/assets/img/about/skype3.jpg" alt="">
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
              <iframe width="560" height="365" src="https://www.youtube.com/embed/1yV3hsoswx8" frameborder="0" allowfullscreen></iframe>
            </div>			
          </div>
          
          
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="why-us-content">
              <h3 class="medium-title">자주하는 질문</h3>
              <!-- accordion start -->
              <div class="accordion-group" id="accordion">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                      	녹음은 어떻게 하나요? 녹음 서비스 추가 비용이 있나요?
                      </a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                      <div class="panel-body">
                        <p>
                    	스카이프는 프로그램 자체에서 녹음을 지원 함으로 무료로 수강자가 직접 녹음이 가능합니다.
                    	프로그램으로는 스카이프가 지원하는 'Power Gramo" 또는 일반 프로그램 '곰 녹음기'가 있습니다.

                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                        	Skype 통화 음질 상태는 어떤가요?
                        </a>
                      </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>
                          	스카이프는 전세계적으로 2억5천만 명 이상이 사용하는 가장 대중적인 통신프로그램인 동시에,
                          	 최고의 퀄리티를 자랑하고 있습니다. 최근에는 많은 기술발달로 유선전화와 동일한 수준의 통화음질을 
                          	 보여주고 있습니다.
                          	 간혹, 카카오톡과 비교되며 음질을 걱정하기도 합니다만, 동일한 환경에서 카카오톡은 보이스톡, 스카이프는
                          	 보이스 뿐만 아니라 화상을 사용 시, 월등한 품질을 보장합니다.
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                          Skype수업은 화상으로 진행되나요?
                        </a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>
                         	스카이프는 챗팅, 화상통화, 전자칠판 게다가 녹음기능까지 사용할 수 있는 복합 화영엉어 프로그램입니다.
                         	수업 중, 스카이프가 지원하는 채팅기능으로 선생님이 화상으로 강의를 진행하면서 챗팅을 통하여 의사전달
                         	 및 교정이 가능하다는 장점도 있습니다.
                         	 또한, 선생님의 얼굴을 보며 수업을 진행하기때문에 회화 경험없는 초등학생, 기초가 부족한 주부, 컴퓨터를
                         	 다루기 힘든 할아버님까지 초보자에게도 쉽게 수업이 가능합니다.
                        </p>
                      </div>
                    </div>                  
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapsefour">
                          	지방출장 또는 해외에서도 수업할 수 있나요?
                        </a>
                      </h4>
                    </div>
                    <div id="collapsefour" class="panel-collapse collapse">
                      <div class="panel-body">
                        <p>
                          	인터넷만 설치돼 있으면 전세계 어느 곳에서든 스카이프로 수업이 가능합니다.
                          	인터넷 또는 WIFI로 연결이 가능하면, 컴퓨터나 노트북, 스마트폰으로 전세계 어느 곳에서
                          	위캔스 화상영어 수업이 가능합니다.
                          	
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

<%--     <!-- Teacher Section Start -->
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
    <!-- Teacher Section End --> --%>

<!--     Start Call to Action Section
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
    End Call to Action Section -->

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