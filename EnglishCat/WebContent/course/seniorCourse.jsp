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
    <title>Junior Course</title>

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
              <h2 class="page-title">시니어 과정</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">Senior Course</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page Header End --> 

    <!-- Courses Section Start -->
    <section class="courses section">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-11.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 3 Years</p>
                                <span class="price">$2000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">Romeo</a>, <a href="#">Head Teacher</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher2.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Pre-Level</a></h3>
                                <p>짧은 문장을 읽고 듣고 이해하며 기본적인 단어로 영어를 표현 하며 자신의 생각을 영어로 이야기 할 수있다. 영어문장에 대한 기본적인 문법적 구조를 터득한다.</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-22.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 4 Years</p>
                                <span class="price">$3000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">Jana Smith</a>, <a href="#">Kiwhi Leonard</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-2.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Beginner</a></h3>
                                <p>영어의 기본적인 체계를 잡고 기본적인 글을 이해하며 문법에 맞게 영어를 자신감 있게 이야기 할 수 있다. 일상생활에 관련된 표현들을 무리없이 구사할 수 있다.</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-33.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 3 Years</p>
                                <span class="price">$2000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">jana Smith</a>, <a href="#">Maria Bella</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-3.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Intermediate</a></h3>
                                <p>다양한 상황의 글을 읽고 짧은 문장으로 자신의 의견을 자신감있게 이야기 할 수 있다. 일상생활에 관련된 주제를 넘어 사회적으로 이슈가 되는 문제들, 뉴스 기사 등에 대해 토론 할 수 있다.</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-44.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 3 Years</p>
                                <span class="price">$2000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">Maria Bella</a>, <a href="#">Jana Smith</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-1.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Middle-Intermediate</a></h3>
                                <p>고2 이상 수준의 글을 읽고 긴문장으로 자신 있게 표현 할 수 있다. 심도 있는 주제에 대해 토론하는 능력을 기른다. 토론에 필요한 표현력, 어휘력, 문법 등을 강화시킨다.</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-55.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 4 Years</p>
                                <span class="price">$3000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">Jana Smith</a>, <a href="#">Kiwhi Leonard</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-2.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">High-Intermediate</a></h3>
                                <p>다양한 이슈에 대해서 영어로 자연스럽게 이야기 할 수 있다. 일상생활에 영어를 사용함에 있어서 전혀 어려움을 느끼지 못하며 다양한 표현을 유연하게 구사한다.</p>


                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="courses-wrap">
                        <div class="thumb">
                            <img src="<%=request.getContextPath()%>/assets/img/courses/img-66.jpg" alt="">
                            <div class="courses-price">
                                <p class="years">Duration: 3 Years</p>
                                <span class="price">$2000</span>
                            </div>
                        </div>
                        <div class="course-detail-wrap">
                            <div class="teacher-wrap">
                                <span class="course-instructor">by <a href="#">jana Smith</a>, <a href="#">Maria Bella</a></span>
                                <img src="<%=request.getContextPath()%>/assets/img/courses/thumb-teacher-3.jpg" alt="">
                            </div>
                            <div class="course-content">
                                <h3><a href="courses-single.html">Advance</a></h3>
                                <p>일상적으로 사용하는 영어 수준이 아닌 학술적 영어를 구사하기 위한 표현법, 어휘 등에 대한 능력을 기른다. 기초자연과학에 관련해서 영어로 원활하게 토론을 할 수 있는 수준.</p>
                                <a href="#" class="btn btn-common btn-sm">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Courses Section End -->

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