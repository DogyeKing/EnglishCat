<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="javax.servlet.http.HttpSession"%>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Bright">

<title>EnglishCat</title>

</head>
<body>
<%-- <%
	HttpSession session1 = request.getSession();
	session1.setAttribute("user_pid","ID0027");
%>
 --%>

	<!-- navigation -->
	<%@include file="include/header.jsp"%>

	
	<!-- Main Carousel Section Start -->
	<div id="carousel-area">
		<div id="carousel-slider" class="carousel slide" data-interval="3000">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-slider" data-slide-to="0" class="active">
				</li>
				<li data-target="#carousel-slider" data-slide-to="1"></li>
				<li data-target="#carousel-slider" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active"
					style="background-image: url(assets/img/slider/bg1.jpg);">
					<div class="carousel-caption">
					<p></p>
						<p>영어회화 도대체 어떻게 해야하나요?</p>
						<h1>
							영어 회화 해답은?<br> 1:1 온라인 화상 영어!<%--  ${sessionScope.user_pid} --%>
						</h1> 
						<a class="btn btn-lg btn-common" href="apply/freeLevelTest.jsp"> <i
							class="fa fa-arrow-circle-right"> </i> 무료체험신청
						</a>
					</div>
				</div>
				<div class="item"
					style="background-image: url(assets/img/slider/bg2.jpg);">
					<div class="carousel-caption">
						<!-- <p>영어회화 도대체 어떻게 해야하나요?</p> -->
						<h1>
							저렴한 수강료 but<br>수준 높은 강사진!
						</h1>
							<p>Now Join us!</p>
						<a class="btn btn-lg btn-common" href="course/teacher.jsp"> <i
							class="fa fa-check"> </i> 강사진 보기
						</a> <a class="btn btn-lg btn-border" href="about/fee.jsp"> <i
							class="fa fa-check "> </i> 수강료 안내
						</a>
					</div>
				</div>
				<div class="item"
					style="background-image: url(assets/img/slider/bg33.jpg);">
					<div class="carousel-caption">
						<p>You Too Can Speak English!</p>
						<h1>
							당신도 영어로 대화 할 수 있습니다. <br>주저말고 신청하세요!
						</h1>
						<a class="btn btn-lg btn-common" href="course/seniorCourse.jsp"> <i
							class="fa fa-arrow-circle-right"> </i> 과정 안내
						</a>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-slider"
				role="button" data-slide="prev"> </a> <a
				class="right carousel-control" href="#carousel-slider" role="button"
				data-slide="next"> </a>
		</div>
	</div>
	<!-- Main Carousel Section End -->

<!-- Why Choose section Start -->
	<!-- <div class="why-choose">
		<div class="container">
			<div class="row">
				<h2 class="section-title">잉글리쉬캣에 오신걸 환영합니다.</h2>
				<div class="col-md-7 col-sm-7 col-xl-12">
					<div class="row">
						<div class="col-md-6">
							<div class="why-wrap">
								<div class="icon">
									<i class="fa fa-line-chart"></i>
								</div>
								<div class="why-text">
									<h4>
										<a href="#">Modern Courses</a>
									</h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Repellendus, quaerat beatae nulla.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="why-wrap">
								<div class="icon">
									<i class="fa fa-trophy"></i>
								</div>
								<div class="why-text">
									<h4>
										<a href="#">High-profile Faculties</a>
									</h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Repellendus, quaerat beatae nulla.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="why-wrap">
								<div class="icon">
									<i class="fa fa-briefcase"></i>
								</div>
								<div class="why-text">
									<h4>
										<a href="#">Guaranteed Career</a>
									</h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Repellendus, quaerat beatae nulla.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="why-wrap">
								<div class="icon">
									<i class="fa fa-magic"></i>
								</div>
								<div class="why-text">
									<h4>
										<a href="#">Research Programs</a>
									</h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Repellendus, quaerat beatae nulla.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="why-wrap">
								<div class="icon">
									<i class="fa fa-money"></i>
								</div>
								<div class="why-text">
									<h4>
										<a href="#">Affordable Costs</a>
									</h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Repellendus, quaerat beatae nulla.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="why-wrap">
								<div class="icon">
									<i class="fa fa-film"></i>
								</div>
								<div class="why-text">
									<h4>
										<a href="#">Cultural Events</a>
									</h4>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Repellendus, quaerat beatae nulla.</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-5 col-sm-5 col-xl-12">
					<div class="featured-thumb">
						<img src="assets/img/features/why.png" alt="">
					</div>
				</div>

			</div>
		</div>
	</div>
	Why Choose section End

Counter Section Start
	<section id="counter">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="counting">
						<div class="icon-left">
							<i class="fa fa-users"></i>
						</div>
						<div class="desc media-body">
							<h3>Enrolled Students</h3>
							<div class="counter" data-count="8565">0</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="counting">
						<div class="icon-left">
							<i class="fa fa-graduation-cap"></i>
						</div>
						<div class="desc media-body">
							<h3>Education Awards</h3>
							<div class="counter" data-count="120">0</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="counting">
						<div class="icon-left">
							<i class="fa fa-diamond"></i>
						</div>
						<div class="desc media-body">
							<h3>Certified Teachers</h3>
							<div class="counter" data-count="193">0</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="counting">
						<div class="icon-left">
							<i class="fa fa-flask"></i>
						</div>
						<div class="desc media-body">
							<h3>Library and Labs</h3>
							<div class="counter" data-count="150">0</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Counter Section End -->
	
	<!-- Activity Area Start -->
	<section class="activity-area section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="section-title">
						<span>잉글리쉬캣</span>만의 이유 있는 자신감! <br>고객님과의 약속과 신뢰를 반드시 지키는 영어교육센터입니다.
					</h2>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="activity-item"  id="realtime">
						<div class="icon fast-color">
							<i class="fa fa-flash"></i>
						</div>
						<h3>공지사항</h3>
						<p class="ajax">ajax 적용 해보자</p>
						<a id="link1" class="btn btn-rm btn-common" href="courses-grid.html">Explore</a>
					</div>
				</div>

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="activity-item active-item" id="realtime">
						<div class="icon secend-color">
							<i class="fa fa-graduation-cap"></i>
						</div>

						<h3>수강후기</h3>
						<p class="ajax">ajax</p>
						<a id="link2" class="btn btn-rm btn-common" href="#">상세보기</a>
					</div>
				</div>

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="activity-item" id="realtime">
						<div class="icon thred-color">
							<i class="fa fa-flask"></i>
						</div>
						<h3>자유게시판</h3>
						<p class="ajax">ajax</p>
						<a id="link3" class="btn btn-rm btn-common" href="courses-grid.html">Explore</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Activity Area End -->

	<!-- Features Area Star -->
	<section class="features">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="features-wrapper">
						<div class="col-md-7 col-sm-12 col-xs-12">
							<div class="features-main">
								<div class="features-header">
									<h2> Why Choose EnglishCat?</h2>
									<p>   왜 잉글리쉬캣을 선택해야 할까요? 그 이유는 바로</p>
								</div>
								<div class="row info">
									<div class="col-sm-6">
										<div class="icon">
											<i class="fa fa-group"></i>
										</div>
										<div class="content">
											<h3> 최고의 강사진</h3>
											<p>필리핀 최고의 교육도시인 일로일로에서 엄격한 자격심사를 통해 고용된 최고의 강사진으로 구성되어 있습니다.</p>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="icon">
											<i class="fa fa-university"></i>
										</div>
										<div class="content">
											<h3> 탄탄한 커리큘럼</h3>
											<p>어린 학생부터 성인까지 단기간에 최고의 효율로 회화실력을 향상 시킬 수 있는 탄탄한 커리큘럼이 준비되어 있습니다. </p>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="icon">
											<i class="fa fa-cogs"></i>
										</div>
										<div class="content">
											<h3> 높은 수준의 화상품질</h3>
											<p>현지에서의 24시간 인터넷 품질관리 모니터링으로 깔끔한 영상과 음성으로 편안히 수업을 받을 수 있습니다.</p>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="icon">
											<i class="fa fa-book"></i>
										</div>
										<div class="content">
											<h3> 합리적인 수강료</h3>
											<p>동종업계 대비 최저의 수강료로 최고의 수업퀄리티를 제공합니다. 잉글리쉬캣은 고객을 항상 먼저 생각하기 때문입니다.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5 col-sm-12 col-xs-12">
							<div class="img-thumb">
								<img src="assets/img/teacher/img-3.png" alt="">
									<!-- <img src="assets/img/features/why.png" alt=""> -->
										<!-- <img src="assets/img/teacher/img-3.png" alt=""> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Features Area End -->

	<!-- Courses Section Start -->
	<!-- <section class="courses section">
		<div class="container">
			<div class="row">
				<h2 class="section-title">Featured Courses</h2>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="courses-wrap">
						<div class="thumb">
							<img src="assets/img/courses/img-1.jpg" alt="">
							<div class="courses-price">
								<p class="years">Duration: 3 Years</p>
								<span class="price">$20000</span>
							</div>
						</div>
						<div class="course-detail-wrap">
							<div class="teacher-wrap">
								<span class="course-instructor">by <a href="#">Maria
										Bella</a>, <a href="#">Jana Smith</a></span> <img
									src="assets/img/courses/thumb-teacher-1.jpg" alt="">
							</div>
							<div class="course-content">
								<h3>
									<a href="courses-single.html">Computer Science</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Repellendus, quaerat beatae nulla debitis vitae temporibus enim
									sed. Optio, reprehenderit, ex.Repellendus,a¦</p>
								<a href="#" class="btn btn-common btn-sm">Apply Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="courses-wrap">
						<div class="thumb">
							<img src="assets/img/courses/img-2.jpg" alt="">
							<div class="courses-price">
								<p class="years">Duration: 4 Years</p>
								<span class="price">$30000</span>
							</div>
						</div>
						<div class="course-detail-wrap">
							<div class="teacher-wrap">
								<span class="course-instructor">by <a href="#">Jana
										Smith</a>, <a href="#">Kiwhi Leonard</a></span> <img
									src="assets/img/courses/thumb-teacher-2.jpg" alt="">
							</div>
							<div class="course-content">
								<h3>
									<a href="courses-single.html">Micro Biology</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Repellendus, quaerat beatae nulla debitis vitae temporibus enim
									sed. Optio, reprehenderit, ex.Repellendus,a¦</p>
								<a href="#" class="btn btn-common btn-sm">Apply Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="courses-wrap">
						<div class="thumb">
							<img src="assets/img/courses/img-3.jpg" alt="">
							<div class="courses-price">
								<p class="years">Duration: 3 Years</p>
								<span class="price">$20000</span>
							</div>
						</div>
						<div class="course-detail-wrap">
							<div class="teacher-wrap">
								<span class="course-instructor">by <a href="#">jana
										Smith</a>, <a href="#">Maria Bella</a></span> <img
									src="assets/img/courses/thumb-teacher-3.jpg" alt="">
							</div>
							<div class="course-content">
								<h3>
									<a href="courses-single.html">Gobal Economic</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Repellendus, quaerat beatae nulla debitis vitae temporibus enim
									sed. Optio, reprehenderit, ex.Repellendus,a¦</p>
								<a href="#" class="btn btn-common btn-sm">Apply Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="courses-wrap">
						<div class="thumb">
							<img src="assets/img/courses/img-4.jpg" alt="">
							<div class="courses-price">
								<p class="years">Duration: 3 Years</p>
								<span class="price">$2900</span>
							</div>
						</div>
						<div class="course-detail-wrap">
							<div class="teacher-wrap">
								<span class="course-instructor">by <a href="#">Maria
										Bella</a>, <a href="#">Jana Smith</a></span> <img
									src="assets/img/courses/thumb-teacher-1.jpg" alt="">
							</div>
							<div class="course-content">
								<h3>
									<a href="courses-single.html">Crash Course on Android/iOS</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Repellendus, quaerat beatae nulla debitis vitae temporibus enim
									sed. Optio, reprehenderit, ex.Repellendus,a¦</p>
								<a href="#" class="btn btn-common btn-sm">Apply Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="courses-wrap">
						<div class="thumb">
							<img src="assets/img/courses/img-5.jpg" alt="">
							<div class="courses-price">
								<p class="years">Duration: 4 months</p>
								<span class="price">$3000</span>
							</div>
						</div>
						<div class="course-detail-wrap">
							<div class="teacher-wrap">
								<span class="course-instructor">by <a href="#">Jana
										Smith</a>, <a href="#">Kiwhi Leonard</a></span> <img
									src="assets/img/courses/thumb-teacher-2.jpg" alt="">
							</div>
							<div class="course-content">
								<h3>
									<a href="courses-single.html">Diving into Big Data</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Repellendus, quaerat beatae nulla debitis vitae temporibus enim
									sed. Optio, reprehenderit, ex.Repellendus,a¦</p>
								<a href="#" class="btn btn-common btn-sm">Apply Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="courses-wrap">
						<div class="thumb">
							<img src="assets/img/courses/img-6.jpg" alt="">
							<div class="courses-price">
								<p class="years">Duration: 6 Months</p>
								<span class="price">$6090</span>
							</div>
						</div>
						<div class="course-detail-wrap">
							<div class="teacher-wrap">
								<span class="course-instructor">by <a href="#">jana
										Smith</a>, <a href="#">Maria Bella</a></span> <img
									src="assets/img/courses/thumb-teacher-3.jpg" alt="">
							</div>
							<div class="course-content">
								<h3>
									<a href="courses-single.html">Getting Started with Java</a>
								</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Repellendus, quaerat beatae nulla debitis vitae temporibus enim
									sed. Optio, reprehenderit, ex.Repellendus,a¦</p>
								<a href="#" class="btn btn-common btn-sm">Apply Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a href="courses-list.html">More Courses <i
				class="fa fa-arrow-right" aria-hidden="true"></i></a>
		</div>
	</section> -->
	<!-- Courses Section End -->

	<!-- Coaching Area Start -->
	<section class="coaching-courses section">
		<div class="container">
			<div class="row">
				<div class="col-md-7 col-sm-6 col-xs-12 col-offset-2">
					<div class="coaching-wrapper">
						<h3>
							잉글리쉬캣을 <span>무료</span>로 체험해보세요!<br>
							서두르세요 곧 마감됩니다.
						</h3>
						<p>회원가입 후 신청 가능합니다.</p>
						<br>
						<div class="timer">
							<div id="clock" class="time-count">
								<div class="time-entry days">
									<span>7</span> Days
								</div>
								<div class="time-entry hours">
									<span>12</span> Hours
								</div>
								<div class="time-entry minutes">
									<span>59</span> Minutes
								</div>
								<div class="time-entry seconds">
									<span>00</span> Seconds
								</div>
							</div>
						</div>

					</div>
				</div>
			                <div class="col-md-5 col-sm-6 col-xs-12">
                    <div class="sign-up box">
                        <div class="heading">
                            <h2 class="heading-title">무료체험 신청</h2>
                            <p class="desc">잉글리쉬캣을 먼저 체험해보세요</p>
                        </div>
                        <form role="form" class="login-form" action="member?cmd=member_freeTestMain" method="post">
                            <div class="form-group">
                                <input type="text" id="name" class="form-control" name="name" placeholder="이름" required data-error="이름을 입력하세요.">
                            </div>
                            <div class="form-group">
                                <input type="text" id="age" class="form-control" name="age" placeholder="나이" required data-error="나이를 입력하세요">
                            </div>  
                            <div class="form-group">
                                <input type="text" id="phone" class="form-control" name="phone" placeholder="전화번호" required data-error="전화번호를 입력하세요">
                            </div> 
                            <div class="form-group">
                                <input type="email" id="email" class="form-control" name="email" placeholder="이메일" required data-error="이메일을 입력하세요">
                            </div> 
                            <div class="form-group">
                                <input type="text" id="content" class="form-control" name="content" placeholder="원하시는 날짜,시간 입력 ex(2018-09-18, 18:00)"  required data-error="원하시는 날짜, 시간을 반드시 입력하세요">
                            </div>   
                            <button class="btn btn-common">신청하기</button>
                          </form>
                    </div>
                </div>
			</div>
		</div>
	</section>
	<!-- Coaching Area End -->

	

	

	<!-- Teacher Section Start -->
	<section class="teacher section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="section-title" data-wow-delay="0s">EnglishCat 개발자들</h2>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="teacher-item wow fadeIn" data-wow-delay="0.1s">
						<div class="thumb-teacher">
							<img src="assets/img/teacher/um22.png" alt="">
						</div>
						<div class="teacher-desc">
							<h3>
								<a href="single-teacher.html">엄 희철</a>
							</h3>
							<span>87.12.24년생 (만 30세) </span>
							<p>홈페이지 기획
							<br>개발
							<br>게시판 담당</p>
							<div class="social-icon">
								<a class="social" href="#"><i class="fa fa-twitter"></i></a> <a
									class="social" href="#"><i class="fa fa-facebook"></i></a> <a
									class="social" href="#"><i class="fa fa-google-plus"></i></a> <a
									class="social" href="#"><i class="fa fa-pinterest"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="teacher-item wow fadeIn" data-wow-delay="0.3s">
						<div class="thumb-teacher">
							<img src="assets/img/teacher/img-2.png" alt="">
						</div>
						<div class="teacher-desc">
							<h3>
								<a href="single-teacher.html">Jen Maroney</a>
							</h3>
							<span>Head of Business Dept.</span>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Ex ea qui, voluptas vitae pariatur nihil odit.</p>
							<div class="social-icon">
								<a class="social" href="#"><i class="fa fa-twitter"></i></a> <a
									class="social" href="#"><i class="fa fa-facebook"></i></a> <a
									class="social" href="#"><i class="fa fa-google-plus"></i></a> <a
									class="social" href="#"><i class="fa fa-pinterest"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="teacher-item wow fadeIn" data-wow-delay="0.5s">
						<div class="thumb-teacher">
							<img src="assets/img/teacher/um33.jpg" alt="">
						</div>
						<div class="teacher-desc">
							<h3>
								<a href="single-teacher.html">김 대홍</a>
							</h3>
							<span>87.11.1년생 (만 30세) </span>
							<p>홈페이지 기획
							<br>개발
							<br>잡일 담당</p>
							<div class="social-icon">
								<a class="social" href="#"><i class="fa fa-twitter"></i></a> <a
									class="social" href="#"><i class="fa fa-facebook"></i></a> <a
									class="social" href="#"><i class="fa fa-google-plus"></i></a> <a
									class="social" href="#"><i class="fa fa-pinterest"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Teacher Section End -->

	<!-- Start Testimonial Section  -->
	<div class="testimonial section">
		<div class="container">
			<div class="row">
				<!-- Testimonial section  -->
				<div class="testimonials-carousel owl-carousel">
					<div class="item">
						<div class="testimonial-item">
							<div class="testimonial-inner">
								<p>안녕 얘들아 너희와 함께 일하게 되어 영광이야 김영광이야 열심히 해서 좋은작품 만들자 그러니 열심히 일하길바라 노예처럼^^; 내 족쇄 이쁘지??^^;; 니 족쇄는 금색이구나 슈밤</p>
							</div>
							<div class="quote-author">
								<a href="#"><img src="assets/img/teacher/um1.png"
									alt=""></a>
								<div class="quote-footer">
									<h5 class="name">엄희철</h5>
									<span> / 예비 개발자</span>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonial-item">
							<div class="testimonial-inner">
								<p>졸지마 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ알겠냐고 엄희철아 졸지말고 수업잘들어 </p>
							</div>
							<div class="quote-author">
								<a href="#"><img src="assets/img/teacher/hong1.jpg"
									alt=""></a>
								<div class="quote-footer">
									<h5 class="name">김대홍</h5>
									<span> / 왕따</span>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonial-item">
							<div class="testimonial-inner">
								<p>When I commenced the programme. I gave myself one year to
									challenge my thinking. change my outlook and choose my next
									step. This could not have been achierved without the remarkable
									opportunities to me.</p>
							</div>
							<div class="quote-author">
								<a href="#"><img src="assets/img/testimonial/avatar3.jpg"
									alt=""></a>
								<div class="quote-footer">
									<h5 class="name">John Mathew</h5>
									<span> / Student</span>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonial-item">
							<div class="testimonial-inner">
								<p>When I commenced the programme. I gave myself one year to
									challenge my thinking. change my outlook and choose my next
									step. This could not have been achierved without the remarkable
									opportunities to me.</p>
							</div>
							<div class="quote-author">
								<a href="#"><img src="assets/img/testimonial/avatar4.jpg"
									alt=""></a>
								<div class="quote-footer">
									<h5 class="name">Julia Swales</h5>
									<span> / Parent</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Testimonial Section  -->

	<!-- Latest New Section Start -->
<!-- 	<section class="latest-news section">
		<div class="container">
			<div class="row">
				<h2 class="section-title">From The Blog</h2>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="news-grid-item">
						<div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<img src="assets/img/news/img-1.jpg" alt="">
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="news-content">
									<h3 class="news-title">
										<a href="blog.html">How to Improve Your Communication
											Skill</a>
									</h3>
									<div class="meta">
										<span class="meta-part"><a href="#"><i
												class="fa fa-calendar-o"></i> 29 Dec, 2016</a></span> <span
											class="meta-part"><a href="#"><i class="fa fa-eye"></i>
												59</a></span> <span class="meta-part"><a href="#"><i
												class="fa fa-commenting-o"></i> 27</a></span>
									</div>
									<p class="desc">Lorem ipsum dolor sit amet, consectetur
										adipisicing elit</p>
									<a href="blog.html" class="btn btn-common btn-sm">Learn Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="news-grid-item">
						<div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<img src="assets/img/news/img-2.jpg" alt="">
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="news-content">
									<h3 class="news-title">
										<a href="blog.html">Is Big Data is New Big Career Path?</a>
									</h3>
									<div class="meta">
										<span class="meta-part"><a href="#"><i
												class="fa fa-calendar-o"></i> 29 Dec, 2016</a></span> <span
											class="meta-part"><a href="#"><i class="fa fa-eye"></i>
												59</a></span> <span class="meta-part"><a href="#"><i
												class="fa fa-commenting-o"></i> 27</a></span>
									</div>
									<p class="desc">Lorem ipsum dolor sit amet, consectetur
										adipisicing elit</p>
									<a href="blog.html" class="btn btn-common btn-sm">Learn Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="news-grid-item">
						<div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<img src="assets/img/news/img-3.jpg" alt="">
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="news-content">
									<h3 class="news-title">
										<a href="blog.html">Top 10 Books You Must Read in 2017</a>
									</h3>
									<div class="meta">
										<span class="meta-part"><a href="#"><i
												class="fa fa-calendar-o"></i> 29 Dec, 2016</a></span> <span
											class="meta-part"><a href="#"><i class="fa fa-eye"></i>
												59</a></span> <span class="meta-part"><a href="#"><i
												class="fa fa-commenting-o"></i> 27</a></span>
									</div>
									<p class="desc">Lorem ipsum dolor sit amet, consectetur
										adipisicing elit.</p>
									<a href="blog.html" class="btn btn-common btn-sm">Learn Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="news-grid-item">
						<div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<img src="assets/img/news/img-4.jpg" alt="">
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="news-content">
									<h3 class="news-title">
										<a href="blog.html">How to Learn a Foreign Language in 3
											Steps</a>
									</h3>
									<div class="meta">
										<span class="meta-part"><a href="#"><i
												class="fa fa-calendar-o"></i> 29 Dec, 2016</a></span> <span
											class="meta-part"><a href="#"><i class="fa fa-eye"></i>
												59</a></span> <span class="meta-part"><a href="#"><i
												class="fa fa-commenting-o"></i> 27</a></span>
									</div>
									<p class="desc">Lorem ipsum dolor sit amet, consectetur
										adipisicing elit</p>
									<a href="blog.html" class="btn btn-common btn-sm">Learn Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Latest New Section End -->

	<!-- NewsLetter Section Start -->
	<section class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<p class="sub">Subscribe</p>
					<h3>To Our Newsletter</h3>
				</div>
				<div class="col-md-6">
					<form id="subscribe" action="">
						<div class="subscribe">
							<input class="form-control" name="EMAIL"
								placeholder="Your email here" required="" type="email">
							<button class="btn btn-common" type="submit">Subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- NewsLetter Section End -->

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
	<%@include file="include/jquery.jsp"%>

	<!--  Ajax 핫 Post 확인 -->
	<!--  ajax 사용 -->
	<script>
		$(document).ready(function() {
			getAjaxList();
		});

		function getAjaxList() {
			console.log('hi');
			$.ajax({
				type : "GET",
				url : "board?cmd=ajax",
				dataType : "json",
				success : function(data) {
					
					console.log(data)
					var list = document.querySelectorAll('#realtime .ajax');
					//list[0].textContent = data[0].cont_content;
					list[1].innerHTML = data.cont_content;
					//list[2].textContent = data[2].cont_content;
					
					var link1 = $('#link1');
					link1.click(function() {
						link1.attr('href', '/BBS/board/view.jsp?bdID='
								+ data[0].bdID);
					});
					var link2 = $('#link2');
					link2.click(function() {
						link2.attr('href', 'board?cmd=review_detail&cont_id='+data.cont_id);
					});
					var link3 = $('#link2');
					link3.click(function() {
						link3.attr('href', '/BBS/board/view.jsp?bdID='+ data[0].bdID);
					});
				}
			});
		}

		setInterval(getAjaxList, 900000);
	</script>
</body>
</html>