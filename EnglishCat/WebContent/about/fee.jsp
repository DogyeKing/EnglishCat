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
<title>Bright – Bootstrap HTML5 Education Template</title>

<!-- navigation -->


<!-- .common_table_border {
    table-layout: fixed;
    border-top: 1px solid #5b5b5b;
    border-bottom: 1px solid #5b5b5b;
    border-collapse: collapse;
    margin-bottom: 10px;
}
 -->

</head>

<body>

	<!-- Header area wrapper Starts -->

	<%@include file="../include/header.jsp"%>
	
	<link rel="stylesheet" href="/EnglishCat/assets/css/custom-components.css">

	<!-- Header area wrapper End -->

	<!-- Page Header Start -->
	<div class="page-header"
		style="background: url(<%=request.getContextPath()%>/assets/img/about/skype1.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumb-wrapper">
						<h2 class="page-title">수강료 안내</h2>
						<a href="index.html">Home</a> <span>/</span> <span class="current">Class
							Fee</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	 <!-- Start Content -->
    <div id="content" class="event">
      <div class="container">
        <div class="row">
          <!-- Start Event Posts -->
          <div class="col-md-8">              

            <!-- Start Event Post -->
            <div class="event-post">  
                 
      
              <!-- Post thumb -->
              <div class="event-thumb">
                <a href="#"><img src="<%=request.getContextPath()%>/assets/img/apply/img2.jpg" alt=""></a><br><br>
                
                <h3 class="medium-title">※ 등록전 꼭 확인해주세요!</h3>
              </div>
              <!-- End thumb -->
              <!-- Post Content -->
              <div class="post-content"> 
                <li>수업은 ‘횟수제’입니다.  1개월 주5회(20회), 주3회(12회), 주2회(8회)이며 월1일에 시작하여 말일까지 하는 것이 아닌 희망하는 시기에 시작하여 횟수를 사용할 때까지 수업을 진행하는 것입니다.</li><br>
                <li>한달을 기준으로 주5회는 2회, 주3회는 1회의 연장 혹은 보강이 가능합니다. 연장요청은 전날 업무시간 오후1시반부터 9시반사이에  마이페이지에 들어오셔서 연장요청을 하실 수 있습니다.</li><br>
                <li>각 수강당 1회 가능하며,  2일 이상 연속으로 연장할 경우 적용됩니다. 장기연장을 사용하시면 단기연장 사용이 불가능합니다.</li><br>
                <li>담당선생님의 작문교정, 월말평가서, 온라인교재가 지원됩니다.</li><br><br>            
              </div>
              <!-- Post Content -->
            </div>
            <!-- End Event Post -->

           

          </div>
          <!-- End Blog Posts -->

          <!--Sidebar-->
          <aside id="sidebar" class="col-md-4">
            <!-- Categories Widget -->
            <div class="widget widget-box">
            
            <h3 class="medium-title">※ 수강료 한눈에 보기</a></h3>
            
              <table class="custom-table" border=1px width=100% align="center">
				<thead>
				<tr>
				<th colspan="3" height="40">1개월</th>
				</tr>
					</thead>
					<tbody align="center">
					<tr>
					<td>주 분</td>
					<td>25분</td>
					<td>50분</td>
					</tr>
					<tr>
					<td>주 2회</td>
					<td>40,000원</td>
					<td>85,000원</td>
					</tr>
					<tr>
					<td>주 3회</td>
					<td>55,000원</td>
					<td>120,000원</td>
					</tr>
					<tr>
					<td>주 5회</td>
					<td>90,000원</td>
					<td>200,000원</td>
					</tr>
					</tbody>
					</table>
					
					<table class="custom-table" border=1px width=100% align="center">
					<thead>
					<tr>
					<th colspan="3" height="40">3개월</th>
					</tr>
					</thead>
					<tbody align="center">
					<tr>
					<td>주 분</td>
					<td>25분</td>
					<td>50분</td>
					</tr>
					<tr>
					<td>주 2회</td>
					<td>100,000원</td>
					<td>230,000원</td>
					</tr>
					<tr>
					<td>주 3회</td>
					<td>150,000원</td>
					<td>340,000원</td>
					</tr>
					<tr>
					<td>주 5회</td>
					<td>240,000원</td>
					<td>560,000원</td>
					</tr>
					</tbody>
				</table>
				
				<table class="custom-table" border=1px width=100% align="center">
					<thead>
					<tr>
					<th colspan="3" height="40">6개월</th>
					</tr>
					</thead>
					<tbody align="center">
					<tr>
					<td>주 분</td>
					<td>25분</td>
					<td>50분</td>
					</tr>
					<tr>
					<td>주 2회</td>
					<td>190,000원</td>
					<td>440,000원</td>
					</tr>
					<tr>
					<td>주 3회</td>
					<td>280,000원</td>
					<td>650,000원</td>
					</tr>
					
					<tr>
					<td>주 5회</td>
					<td>450,000원</td>
					<td>1,000,000원</td>
					</tr>
					</tbody>
				</table>
				
				
				<table class="custom-table" border=1px width=100% align="center">
					<thead>
					<tr>
					<th colspan="3" height="40">12개월</th>
					</tr>
					</thead>
					<tbody align="center">
					<tr>
					<td>주 분</td>
					<td>25분</td>
					<td>50분</td>
					</tr>
					<tr>
					<td>주 2회</td>
					<td>300,000원</td>
					<td>800,000원</td>
					</tr>
					<tr>
					<td>주 3회</td>
					<td>480,000원</td>
					<td>1,220,000원</td>
					</tr>
					
					<tr>
					<td>주 5회</td>
					<td>450,000원</td>
					<td>1,800,000원</td>
					</tr>
					</tbody>
				</table>
				
            </div>
          </aside>
          <!--End sidebar-->

        </div>
      </div>
    </div>
    <!-- End Content -->
    
      
    <div class="loader">
		<div class="preloader2">
			<span></span> <span></span> <span></span> <span></span> <span></span>
		</div>
	</div>

	<jsp:include page="/include/footer.jsp" />
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-arrow-up"></i>
	</a>

	

	<!-- jQuery  -->
	<%@include file="../include/jquery.jsp"%>

</body>
</html>