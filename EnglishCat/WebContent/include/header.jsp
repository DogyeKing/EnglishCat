<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
        <!-- Bootstrap CSS -->    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
    
    <!-- Main Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/main.css">
    <!-- Normalize Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/normalize.css">
    <!-- Fonts Awesome -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/fonts/font-awesome.min.css">
 
    <!-- Animate CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/animate.css" type="text/css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/owl.theme.css" type="text/css">
    <!-- Rev Slider Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/settings.css" type="text/css">
    <!-- Nivo Lightbox Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/nivo-lightbox.css" type="text/css">
    <!-- Slicknav Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slicknav.css" type="text/css">
    <!-- Responsive Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/responsive.css">
    
    <!-- Color CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/colors/sky.css" media="screen" />
    
    <!-- Respective Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/respective.css">
    
  <!-- Header area wrapper Starts -->
    <header id="header-wrap">
      <!-- Roof area Starts -->
      <div id="roof" class="hidden-xs">
          <div class="container">
              <!-- Wellcome Starts -->
              <div class="pull-left">
                <i class="fa fa-map-o" aria-hidden="true"></i> Busan, Republic of Korea

              </div>
              <!-- Wellcome End -->


              <!-- Quick Contacts Starts -->
              
              
              <div class="quick-contacts pull-right">
              <c:choose>
          		<c:when test="${empty sessionScope.user_pid && empty sessionScope.naver_id}">
                  <span><i class="fa fa-phone"></i> +82 051 753 5600</span>
                  <span><i class="fa fa-envelope"></i><a href="#">uhc1224@naver.com</a></span>
                  <span><a href="<%=request.getContextPath()%>/account/login.jsp"><i class="fa fa-user"></i> Login</a> / <a href="<%=request.getContextPath()%>/account/registration.jsp">Register</a></span>
              	 </c:when>
              	 <c:when test="${!empty sessionScope.naver_id}">
	              	 <span><i class="fa fa-phone"></i> +82 051 753 5600</span>
	              	 <span><i class="fa fa-envelope"></i><a href="#">uhc1224@naver.com</a></span>
	              	 <span><a href="<%=request.getContextPath()%>/member?cmd=member_logout"><i class="fa fa-user"></i> Logout</a></span>
              	 </c:when>
              	 <c:when test="${!empty sessionScope.user_pid}">
	              	 <span><i class="fa fa-phone"></i> +82 051 753 5600</span>
	              	 <span><i class="fa fa-envelope"></i><a href="#">uhc1224@naver.com</a></span>
	             <%--  	 <span><a href="<%=request.getContextPath()%>/member?cmd=member_update"><i class="fa fa-user"></i> Account</a></span> --%>
	              	 <span><a href="<%=request.getContextPath()%>/member?cmd=member_logout"><i class="fa fa-user"></i> Logout</a></span>
              	</c:when>
              </c:choose>
              
              </div>
            </div>  
              <!-- Quick Contacts End -->
          </div>
      
      
      <!-- Roof area End -->

      <!-- Navbar Start -->
      <nav class="navbar navbar-default main-navigation" role="navigation" data-spy="affix" data-offset-top="50">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/assets/img/logo.png" alt=""></a>
            </div>
            <!-- Brand End -->

            <!-- Search Icon -->
            <div class="header-search pull-right">
                <a class="open-search">
                    <i class="fa fa-search"></i>
                </a>
            </div>  
            <!-- Collapse Navbar -->
            <div class="collapse navbar-collapse" id="navbar">
              <ul class="nav navbar-nav navbar-right">
                <li class="dropdown dropdown-toggle">
                  <a class="active" href="index.jsp" data-toggle="dropdown">잉글리쉬 캣 <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="<%=request.getContextPath()%>/home/englishCat.jsp">잉글리쉬캣 소개</a></li>    
             <!--        <li><a href="index-1.html">Home Page 2</a></li>     --> 
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">수강안내 <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="<%=request.getContextPath()%>/about/fee.jsp">수강료 안내</a></li>    
                    <li><a href="<%=request.getContextPath()%>/about/skypeInstall.jsp">Skype 설치하기</a></li>  
                    <li><a href="<%=request.getContextPath()%>/about/skypeJang.jsp">Skype 화상영어 장점</a></li>   
                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">수강신청 <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="<%=request.getContextPath()%>/apply/freeLevelTest.jsp">무료체험신청</a></li>                     
                    <li><a href="<%=request.getContextPath()%>/apply/application.jsp">수강신청</a></li>
                    <li><a href="<%=request.getContextPath()%>/apply/applyinfo.jsp">결제안내</a></li>    
                    <li><a href="<%=request.getContextPath()%>/apply/levelTest.jsp">레벨 테스트</a></li> 

                  </ul>                        
                </li>
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">수업과정 <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="<%=request.getContextPath()%>/course/teacher.jsp">강사 소개</a></li>                     
                    <li><a href="<%=request.getContextPath()%>/course/seniorCourse.jsp">시니어 과정</a></li>
                    <li><a href="<%=request.getContextPath()%>/course/juniorCourse.jsp">주니어과정</a></li>
                  </ul>                        
                </li> 
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">커뮤니티 <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                    <li><a href="blog.html">공지사항</a></li>                     
                    <li><a href="<%=request.getContextPath()%>/board/faqList.jsp">FAQ</a></li>
                    <li><a href="<%=request.getContextPath()%>/board?cmd=review_list">수강후기</a></li>   
                    <li><a href="single-post.html">자유게시판</a></li>   
                  </ul>                        
                </li> 
                
                
                <li class="dropdown dropdown-toggle">
                  <a href="#" data-toggle="dropdown">마이페이지 <i class="fa fa-angle-down"></i></a>
                  <ul class="dropdown-menu">
                  
                    <li><a href="<%=request.getContextPath()%>/member?cmd=member_update">회원정보수정</a></li>
                    <li><a href="<%=request.getContextPath()%>/account/payment.jsp">결제내역</a></li>   
                  </ul>                        
                </li>
                                            
                <%-- <li><a href="<%=request.getContextPath()%>/member?cmd=member_update">마이페이지</a></li> --%>
              </ul>
            </div>  
            
            
            
             <!-- Form for navbar search area -->
            <form class="full-search">
              <div class="container">
                <div class="row">
                  <input class="form-control" type="text" placeholder="Search">
                  <a class="close-search">
                  <span class="fa fa-times">
                  </span>
                  </a>
                </div>
              </div>
            </form>
            <!-- Search form ends -->   

            <!-- Mobile Menu Start -->
            <ul class="wpb-mobile-menu">
              <li>
                <a class="active" href="index.html">Home</a>
                <ul>
                  <li><a class="active" href="index.html">Home Page 1</a></li>    
                  <li><a href="index-1.html">Home Page 2</a></li>     
                </ul>                        
              </li>
              <li>
                <a href="#">Courses</a>
                <ul>
                  <li><a href="courses-list.html">Courses List</a></li>    
                  <li><a href="courses-grid.html">Courses Grid</a></li>  
                  <li><a href="courses-single.html">Single Course</a></li>   
                </ul>                        
              </li>
              <li>
                <a href="#">Pages</a>
                <ul>
                  <li><a href="about.html">About Page</a></li>                     
                  <li><a href="gallery.html">Image Gallery</a></li>
                  <li><a href="faq.html">FAQ</a></li>    
                  <li><a href="login.html">Login Page</a></li> 
                  <li><a href="single-teacher.html">Single Teacher</a></li> 
                  <li><a href="registration.html">Registration Form</a></li> 
                  <li><a href="contact.html">Contacts</a></li> 
                  <li><a href="404.html">404</a></li> 
                </ul>                        
              </li>
              <li>
                <a href="#">Events</a>
                <ul>
                  <li><a href="event-grid.html">Events Grid</a></li>                     
                  <li><a href="event.html">Single Event</a></li>
                </ul>                        
              </li> 
              <li>
                <a href="#">Blog</a>
                <ul>
                  <li><a href="blog.html">Blog - Right Sidebar</a></li>                     
                  <li><a href="blog-left-sidebar.html">Blog - Left Sidebar</a></li>
                  <li><a href="blog-full-width.html">Blog - Full Width</a></li>   
                  <li><a href="single-post.html">Blog Single Post</a></li>   
                </ul>                        
              </li>              
              <li><a href="contact.html">Contact</a></li>
            </ul>
            <!-- Mobile Menu End -->

          </div>
      </nav>
      <!-- Navbar End -->

    </header>
    <!-- Header area wrapper End -->