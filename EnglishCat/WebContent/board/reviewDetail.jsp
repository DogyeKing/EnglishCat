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

<title>Home</title>
</head>
<body>
<%@include file="/include/header.jsp" %>

<br>
<br>
<section id="view">
  <div class="container">
    <div class="row">
      <!-- Blog Entries Column -->
      <div class="col-md-8">
           <div class="content-section">
           		<input type="hidden" name="cont_id" value="${contReviewVO.cont_id}">
                 <fieldset class="form-group">
                    <legend class="border-bottom mb-4">내용보기</legend>                   
                  
                      <div class="form-group">
                       <label class="form-control-label">아이디</label>
                       <input class="form-control form-control-lg" name="user_pid" type="text" value="${contReviewVO.user_pid}" readonly>
                    </div>
                    
                    <div class="form-group">
                       <label class="form-control-label">제목</label>
                       <input class="form-control form-control-lg" name="cont_title" type="text" value="${contReviewVO.cont_title}" required autofocus>
                    </div>
                    <div class="form-group">
                       <label class="form-control-label">내용</label>
                       <textarea id="textAreaContent" name="cont_content" rows="15" cols="80" style="width:100%">${contReviewVO.cont_content}</textarea>
                    </div>                 
                    
               <c:choose>                    
                  <c:when test="${check_pid eq 'ok'}">
    		          	<a class="btn btn-primary" href="<%=request.getContextPath() %>/board?cmd=review_update&cont_id=${contReviewVO.cont_id}">수정</a>
             	   	    <a class="btn btn-primary" href="<%=request.getContextPath() %>/board?cmd=review_delete&cont_id=${contReviewVO.cont_id}">삭제</a>
                  </c:when>
               </c:choose>
                    
                 </fieldset>
           </div>
      </div>
   </div>
</div>
   </section>
   <br>
   <br>

    <!-- Go To Top Link -->
<!--     <a href="#" class="back-to-top">
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
    </div> -->


    <!-- Footer Section -->

    <jsp:include page="/include/footer.jsp"/>

    <!-- Footer Section End-->

    <!-- jQuery  -->
    <%@include file="../include/jquery.jsp" %>
   
   
</body>
</html>

