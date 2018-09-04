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


	
<div class="container">

<div  style="background:#538bca;height:30px;line-height:30px;width:130px;text-align:center;color:#fff"><span>20분 수업</span></div>
	<table border="0" cellpadding="0" cellspacing="0" class="common_table_border" style="margin-top: 10px; width: 100%">
		<colgroup>
			<col width="25%" />
			<col width="25%" />
			<col width="25%" />
			<col width="25%" />
		</colgroup>
		<tbody>
			<tr>
				<th>기간</th>
				<th>주2회</th>
				<th>주3회</th>
				<th>주5회</th>
			</tr>
			<tr height="28">
				<td style="text-align: center">1개월(4주)</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="40000|1개월(4주)|4|20|2"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">40,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="55000|1개월(4주)|4|20|3"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">55,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="90000|1개월(4주)|4|20|5"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">90,000(원)&nbsp;</td>
			</tr>
			<tr height="28">
				<td style="text-align: center">3개월(12주)</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="100000|3개월(12주)|12|20|2"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">100,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="150000|3개월(12주)|12|20|3"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">150,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="240000|3개월(12주)|12|20|5"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">240,000(원)&nbsp;</td>
			</tr>
			<tr height="28">
				<td style="text-align: center">6개월(24주)</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="190000|6개월(24주)|24|20|2"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">190,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="280000|6개월(24주)|24|20|3"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">280,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="450000|6개월(24주)|24|20|5"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">450,000(원)&nbsp;</td>
			</tr>
		</tbody>
	</table>




	<div style="background: #538bca; height: 30px; line-height: 30px; width: 130px; text-align: center; color: #fff">
		<span>50분 수업</span>
	</div>

	<table border="0" cellpadding="0" cellspacing="0" class="common_table_border" style="margin-top: 10px; width: 100%">
		<colgroup>
			<col width="25%" />
			<col width="25%" />
			<col width="25%" />
			<col width="25%" />
		</colgroup>
		<tbody>
			<tr>
				<th>기간</th>
				<th>주2회</th>
				<th>주3회</th>
				<th>주5회</th>
			</tr>
			<tr height="28">
				<td style="text-align: center">1개월(4주)</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="85000|1개월(4주)|4|50|2"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">85,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="120000|1개월(4주)|4|50|3"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">120,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="200000|1개월(4주)|4|50|5"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">200,000(원)&nbsp;</td>
			</tr>
			<tr height="28">
				<td style="text-align: center">3개월(12주)</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="230000|3개월(12주)|12|50|2"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">230,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="340000|3개월(12주)|12|50|3"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">340,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="560000|3개월(12주)|12|50|5"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">560,000(원)&nbsp;</td>
			</tr>
			<tr height="28">
				<td style="text-align: center">6개월(24주)</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="440000|6개월(24주)|24|50|2"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">440,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="650000|6개월(24주)|24|50|3"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">650,000(원)&nbsp;</td>
				<td align="right"><input type="radio" name="article"
					id="article" value="1000000|6개월(24주)|24|50|5"
					onclick="ChoiceArticle(this.value)" style="margin-right: 5px">1,000,000(원)&nbsp;</td>
			</tr>
		</tbody>
	</table>
</div>





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
	<%@include file="../include/jquery.jsp"%>

</body>
</html>