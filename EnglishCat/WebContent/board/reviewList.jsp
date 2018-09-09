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
         <h2 class="text-center text-uppercase text-secondary mb-0">수강후기</h2>
         <!-- <hr class="star-dark mb-5"> -->
         <br>
         <div class="row">
            <div class="col-lg-8 mx-auto">
               <div id="board-list" class="container">
                  <!-- 부트스트랩 이용한 그리드 시스템 -->
                  <div class="row">
                     <!-- 12칸 분할 -->
                     <div class="col-lg-2"></div>
                     <div class="col-lg-8">
            <table class="table table-striped">

           		<tr>
					<td>번호</td>
					<td>제목</td>
					<td>내용</td>
					<td>아이디</td>
					<td>작성일자</td>
				</tr>

				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.cont_id}</td>
						<td>${item.cont_title}</td>
						<td>${item.cont_content}</td>
						<td>${item.user_pid}</td>
						<td>${item.insert_dt}</td>

					</tr>
				</c:forEach>
               </table>
                    <a class="btn btn-primary" href="<%=request.getContextPath()%>/board/reviewWriteForm.jsp">글쓰기</a>
                     </div>
                     <!-- row(12분할) END -->
                  </div>
                  <!-- container END -->
               </div>

            </div>
         </div>
      </div>
   </section>
   
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


    <!-- Footer Section -->

 <jsp:include page="/include/footer.jsp"/>

    <!-- Footer Section End-->

    <!-- jQuery  -->
    <%@include file="../include/jquery.jsp" %>
   
   
</body>
<br>
<br>
<br>
<br>



</html>

