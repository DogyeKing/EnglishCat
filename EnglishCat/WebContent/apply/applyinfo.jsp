<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<%@include file="/include/header.jsp" %>

    <!-- Page Header Start -->
    <div class="page-header" style="background: url(<%=request.getContextPath()%>/assets/img/banner1.jpg);">
      <div class="container">
        <div class="row">         
          <div class="col-md-12">
            <div class="breadcrumb-wrapper">
              <h2 class="page-title">결제안내</h2>
              <a href="index.html">apply</a>
              <span>/</span>
              <span class="current">apply Information</span>
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
                
 
 				<div class="item">
                      <a href="#"><img src="<%=request.getContextPath()%>/assets/img/event/img666.jpg" alt=""></a>
                </div>

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
                  <h3>1. 스카이프 다운로드</h3>
                  <p>스카이프를 다운로드 받으시고 헤드셋을 준비해 주시기 바랍니다.</p>                  
                  <p>수업의 진중도를 높이기위해 저가형 헤드셋은 지양해 주시기 바랍니다.</p>
                </div>
                
                <!-- Courses Slider End -->
                <div class="des item-inner">
                  <h3>2. 무료 레벨테스트 신청</h3>
                  <p>레벨테스트 신청서의 항목들을 작성하여 신청해 주시기 바랍니다.</p>                  
                  <p>신청서가 접수되면 스카이프 아이디의 존재 여부를 확인한 후 고객님께 전화를 드려 가장 적합한 선생님을 배정하기 위한 상담을 합니다.</p>
                </div>
                
                <!-- Courses Slider End -->
                <div class="des item-inner">
                  <h3>3. 온라인입금 / 카드결제</h3>
                  <p>레벨테스트를 마치고 나면 저희 쪽에서 전화를 드려 수강에 대한 안내를 드립니다.</p>
                  <p>물론 전화드리기 전에 미리 결제를 하셔도 무방합니다.</p>                  
                  <p>결제방법은 온라인 입금과 카드결제 방법이 있습니다.</p>
                </div>
                
                
                
                <!-- <div class="topics item-inner">
                    <h3>Topics Included</h3>
                    <div class="row">
                      <div class="col-sm-4">
                        <ul>
                          <li><i class="fa fa-check"></i> WooCommerce Integration</li>
                          <li><i class="fa fa-check"></i> Visual Composer</li>
                          <li><i class="fa fa-check"></i> Revolution Slider</li>
                          <li><i class="fa fa-check"></i> Custom Drag and Drop Blocks</li>
                        </ul>
                      </div>
                      <div class="col-sm-4">
                        <ul>
                          <li><i class="fa fa-check"></i> Personal Assistance</li>
                          <li><i class="fa fa-check"></i> Standard and Secure Code</li>
                          <li><i class="fa fa-check"></i> Validated</li>
                          <li><i class="fa fa-check"></i> Latest WordPress Compatible</li>
                        </ul>
                      </div>
                      <div class="col-sm-4">
                        <ul>
                          <li><i class="fa fa-check"></i> Ajax Galleries</li>
                          <li><i class="fa fa-check"></i> Events Management</li>
                          <li><i class="fa fa-check"></i> Teachers Management</li>
                          <li><i class="fa fa-check"></i> Advanced Options</li>
                        </ul>
                      </div>
                    </div>
                </div> -->
                
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
                  <i class="fa fa-angle-right"></i><a href="<%=request.getContextPath()%>/apply/freeLevelTest.jsp">무료체험신청</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="<%=request.getContextPath()%>/apply/application.jsp">수강신청</a>
                </li>
                <li>
                  <i class="fa fa-angle-right"></i><a href="<%=request.getContextPath()%>/apply/levelTest.jsp">레벨 테스트</a>
                </li>
                
                <li>
                  <i class="fa fa-angle-right"></i><a href="http://skype.daesung.com/download/downloadMain.asp#none">스카이프 다운로드</a>
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