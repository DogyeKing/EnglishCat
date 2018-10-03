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
<%@include file="/include/header.jsp" %>
	<script>
		/*var page_list = 
		$(".pagingContainer").add*/
	</script>

<title>Home</title>
</head>
<body>
<br>
<br>
<section id="view">
      <div class="container">
         <h2 class="text-center text-uppercase text-secondary mb-0">수강후기</h2>
         <!-- <hr class="star-dark mb-5"> -->
         <br>
         <div class="row">
            <div class="col-lg-8">
               <div id="board-list" class="container">
                  <!-- 부트스트랩 이용한 그리드 시스템 -->
                  <div class="row">
                     <div class="reviewListContainer">
            <table class="table table-striped">

           		<tr>
					<td>번호</td>
					<td>제목</td>
					<td>조회수</td>
					<td>아이디</td>
					<td>작성일자</td>
				</tr>

				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.cont_seq}</td>
						<td><a href="<%=request.getContextPath()%>/board?cmd=review_detail&cont_id=${item.cont_id}">${item.cont_title}</a></td>
						<td>${item.read_cnt}</td>
						<td>${item.user_pid}</td>
						<td>${item.insert_dt}</td>

					</tr>
				</c:forEach>
               </table>
                     <div class="pagingContainer">${page_len}</div>
					
                    <a class="btn btn-primary" href="<%=request.getContextPath()%>/board?cmd=review_write">글쓰기</a>
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
   <!--  <a href="#" class="back-to-top">
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
<br>
<br>
<br>
<br>



</html>

