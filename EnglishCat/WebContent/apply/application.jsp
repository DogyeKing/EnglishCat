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
  


    <!-- Start Content -->
    <div id="content">
      <div class="container">
        <div class="row">
          
          <!-- Start Blog Posts -->
          <div class="col-md-8 col-md-offset-2">         

            <!-- Start Post -->
            <div class="blog-post">
              <!-- Post feature-inner -->
              <div class="feature-inner">
                <a class="lightbox" href="assets/img/blog/post-1.jpg"><img src="assets/img/blog/post-1.jpg" alt=""></a>
              </div>
              <!-- End Post feature-inner -->
              
              <!-- Post Content -->
              <div class="post-content"> 
                
                <h3 class="post-title">수강 등록<br><br><br><br></a></h3><br><br><br>
                <!-- <div class="meta"> 
                  <span class="meta-part"><a href="#"><i class="fa fa-clock-o"></i> May 30, 2017</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-bookmark"></i>CSS, Print, Techniques</a></span>
                  <span class="meta-part"><a href="#"><i class="fa fa-commenting"></i> 10 Comments</a></span>
                </div> -->
                
   
                <p>당신의 레벨은 [...] 입니다.</p>
                <p>추천하는 강의는 [...] 입니다.</p>
              </div>
              
              <div>
              
              </div>
              <!-- Post Content -->
            </div>
            </div>
   
            <!-- End Post -->
 
        </div>
      </div>
    </div>

      <div class="container">
<div  style="background:#538bca;height:30px;line-height:30px;width:130px;text-align:center;color:#fff"><span>주니어</span></div>
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
				<td style="text-align: right">1개월(4주)</td>
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
				<td style="text-align: right">3개월(12주)</td>
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
				<td style="text-align: right">6개월(24주)</td>
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
	<br><br>




	<div style="background: #538bca; height: 30px; line-height: 30px; width: 130px; text-align: center; color: #fff">
		<span>시니어</span>
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
	</table><br><br>
	
	<!-- Read btn -->
    <div class="read-btn" align="center">                
       <a class="btn btn-common" href="#">결제 <i class="fa fa-angle-right"></i></a>
    </div>
    
    <br><br><br>
</div>
    
    
    <!-- End Content -->
    
    

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