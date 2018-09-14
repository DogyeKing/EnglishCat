<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<%@include file="/include/header.jsp" %>

      <!-- Navbar End -->


    </header>
    <!-- Header area wrapper End -->

    <!-- Start Content Section -->
    <section id="content" class="error-bg">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3">
            <div class="error-page">
              <h1>404</h1>
              <h2>Oops, Page Not Found!</h2>
              <p>The link might be corrupted</p>
              <a href="index.jsp" class="btn btn-common">Go To Home</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Content Section  -->

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