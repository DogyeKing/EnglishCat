<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


	<!-- navigation -->
	<%@include file="include/header.jsp"%>

	<%
		
	%>
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
							영어 회화 해답은?<br> 1:1 온라인 화상 영어!
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
	<div class="why-choose">
		<div class="container">
			<div class="row">
				<h2 class="section-title">Why Choose Our University</h2>
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
	<!-- Why Choose section End -->

<!-- Counter Section Start -->
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
	</section>
	<!-- Counter Section End -->
	
	<!-- Activity Area Start -->
	<section class="activity-area section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="section-title">
						A powerhouse of cutting-edge <br>education, research &
						teaching in The World
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
									<h2>Welecome To Bright University</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit.</p>
								</div>
								<div class="row info">
									<div class="col-sm-6">
										<div class="icon">
											<i class="fa fa-group"></i>
										</div>
										<div class="content">
											<h3>Skilled Professors</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Repellendus, quaerat beatae.</p>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="icon">
											<i class="fa fa-university"></i>
										</div>
										<div class="content">
											<h3>Best Infrastructure</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Repellendus, quaerat beatae.</p>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="icon">
											<i class="fa fa-cogs"></i>
										</div>
										<div class="content">
											<h3>Well Equiped Labs</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Repellendus, quaerat beatae.</p>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="icon">
											<i class="fa fa-book"></i>
										</div>
										<div class="content">
											<h3>Big Library</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Repellendus, quaerat beatae.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5 col-sm-12 col-xs-12">
							<div class="img-thumb">
								<img src="assets/img/features/img1.png" alt="">
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
							Get <span>Free</span> Training on Business Development<br>
							By John Smith
						</h3>
						<p>It's limited seating! Hurry Up</p>
						<div class="timer">
							<div id="clock" class="time-count">
								<div class="time-entry days">
									<span>00</span> Days
								</div>
								<div class="time-entry hours">
									<span>00</span> Hours
								</div>
								<div class="time-entry minutes">
									<span>00</span> Minutes
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
                            <h2 class="heading-title">Sign Up Now</h2>
                            <p class="desc">Get Free Courses</p>
                        </div>
                        <form role="form" class="login-form" action="<%=request.getContextPath()%>/sendMail.jsp" method="post">
                            <div class="form-group">
                                <input type="text" id="sender-from" class="form-control" name="from" placeholder="Enter your Email">
                            </div>
                            <div class="form-group">
                                <input type="text" id="sender-to" class="form-control" name="to" placeholder="Enter your Email">
                            </div>  
                            <div class="form-group">
                                <input type="text" id="sender-subject" class="form-control" name="subject" placeholder="Enter your Subject">
                            </div> 
                                                        <div class="form-group">
                                <input type="text" id="sender-subject" class="form-control" name="subject" placeholder="Enter your Subject">
                            </div> 
                            <div class="form-group">
                                <input type="text" id="sender-content" class="form-control" name="content" placeholder="Enter your Content">
                            </div>   
                            <button class="btn btn-common" onclick="check()" value="transmission">Enroll Now</button>
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
							<span>Head of Computer Science Dept.</span>
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
							<img src="assets/img/teacher/img-3.png" alt="">
						</div>
						<div class="teacher-desc">
							<h3>
								<a href="single-teacher.html">Sarah Robert</a>
							</h3>
							<span>Student Advisor</span>
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
								<p>When I commenced the programme. I gave myself one year to
									challenge my thinking. change my outlook and choose my next
									step. This could not have been achierved without the remarkable
									opportunities to me.</p>
							</div>
							<div class="quote-author">
								<a href="#"><img src="assets/img/testimonial/avatar1.jpg"
									alt=""></a>
								<div class="quote-footer">
									<h5 class="name">John Mathew</h5>
									<span> / Alumini</span>
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
								<a href="#"><img src="assets/img/testimonial/avatar2.jpg"
									alt=""></a>
								<div class="quote-footer">
									<h5 class="name">Maria Ashe</h5>
									<span> / Parent</span>
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