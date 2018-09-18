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
              <h2 class="page-title">강사소개</h2>
              <a href="index.html">Home</a>
              <span>/</span>
              <span class="current">Teachers</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page Header End --> 

    <!-- Single Teacher Section Start -->
    <section id="content" class="single-teacher">
      <div class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div class="single-teacher-inner">
              <div class="row">
                <div class="col-md-5">
                  <div class="thumb-img">
                    <img src="<%=request.getContextPath()%>/assets/img/teacher/img-11.jpg" alt="">
                  </div>
                  <div class="contact-teacher">
                    <h4>Contact me</h4>
                    <form  class="teacher-form" role="form" method="post">
                      <div class="form-group">
                        <input class="form-control" name="username" type="text" placeholder="Full Name">
                      </div>
                      <div class="form-group">
                        <input class="form-control" name="email" id="email" type="email" placeholder="Email Address">
                      </div>    
                      <textarea class="form-control" placeholder="Write Message" rows="5"></textarea>     
                      <button type="submit" id="submit" class="btn btn-common">Send Message</button>  
                    </form>
                  </div>
                </div>
                <div class="col-md-7">
                  <div class="teacher-info">
                    <div class="name section-heading">
                      <h3>Romeo</h3>
                      <span>Head Teacher</span>
                    </div>
                    <div class="social-icon">
                      <a class="social" href="#"><i class="fa fa-twitter"></i></a>
                      <a class="social" href="https://www.facebook.com/noynoy.putput"><i class="fa fa-facebook"></i></a>                  
                      <a class="social" href="#"><i class="fa fa-google-plus"></i></a>
                      <a class="social" href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                    <div class="desc">
                      <p>Hi! 
My name is Romeo. I’m an English tutor. I teach students from Korea, Japan, China, Vietnam, Taiwan and France. Teaching is my passion and I’ve been doing it for 11 years. The subjects that I teach include grammar, conversation, vocabulary and reading comprehension. Through living in Australia for 1 year and traveling to other countries, I have developed a deeper understanding of other cultures that I can incorporate in my classes. I also believe that humor, positivity and encouragement play an important role in learning. Thus, making my class fun, interactive and utmost ideal for the development of your English Skill. </p>
                      <h4>Biography</h4>
                      <p><strong>Teacher name was born in the middle of 70’s in the generation that swore to be young forever and with this young soul the teacher name saw your professional life arises so fast. Read the details below:</strong></p>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum eius dolorum officia debitis, quaerat dolor deleniti amet animi quo repudiandae, illo, beatae esse voluptatum numquam sequi iusto magni inventore recusandae? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui, dolore! Maiores officiis cum aspernatur, eligendi enim. Minus cumque, unde rerum dolorum maxime illum, blanditiis suscipit ipsa nemo impedit laboriosam magni.</p>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui amet autem laudantium repellat fuga, quisquam eaque expedita veritatis tenetur porro adipisci, soluta, numquam ad non laborum aliquid cum eos corporis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum nostrum doloribus perferendis. Explicabo minus, possimus optio laudantium modi, omnis, quod doloremque sequi illo assumenda dolorum repellat. Numquam doloremque ratione corporis.</p>
                      <ul>
                        <li><i class="fa fa-phone"></i>0 123 9874 321</li>
                        <li><i class="fa fa-envelope"></i><a href="#">julia@educa.com</a></li>
                        <li><i class="fa fa-skype"></i>julia-educa</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Single Teacher Section End -->

    <!-- Start Call to Action Section -->
    <!-- <div class="cta">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-8">
            <h3>Locavore food truck cornhole sustainable paleo hella.</h3>
          </div>
          <div class="col-md-4 col-sm-4">
            <a href="#" class="btn btn-border">Purchase Now</a>
          </div>
        </div>
      </div>
    </div> -->
    <!-- End Call to Action Section -->

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