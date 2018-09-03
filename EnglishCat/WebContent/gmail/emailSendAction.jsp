<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="com.cos.util.Gmail"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="com.cos.util.Script"%>
<%@page import="java.util.Properties"%>
<%@page import="com.cos.dao.RegistDAO"%>
<%@page import="com.cos.util.SHA256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
	RegistDAO dao = new RegistDAO();
	String id = null;
	if(session.getAttribute("user_id") != null){
		id = (String)session.getAttribute("user_id");
	}
	
	int emailChecked = dao.select_user_mail_yn(id);
	System.out.println("ec : " + emailChecked);
	if(emailChecked == 1){
		Script.moving(response, "이미 인증된 회원입니다.");
	}else if(emailChecked == -1){
		Script.moving(response, "데이터 베이스 오류");
	}
	
	StringBuffer url = request.getRequestURL();
	String path[] = url.toString().split("/");
	String host = "";
	for(int i=0; i<path.length-1; i++){
		host += path[i]+"/";
	}
	
	System.out.println("HOST : "+ host);
	String from = "englishcat5600@gmail.com";
	String to = dao.select_user_mail(id);
	String salt = dao.select_salt(id);
	String code = SHA256.getEncrypt(to, salt);
	
	String subject = "회원가입을 위한 이메일 인증 메일입니다.";
	String content = "다음 링크에 접속하여 이메일 인증을 진행해주세요. "
			+ "<a href='"+host+"emailCheckAction.jsp?code="+code+"'>이메일 인증하기</a>";
			
	Properties p = new Properties();
	p.put("mail.smtp.user", from);
	p.put("mail.smtp.host", "smtp.googlemail.com");
	p.put("mail.smtp.port", "465");
	p.put("mail.smtp.starttls.enable", "true");
	p.put("mail.smtp.auth", "true");
	p.put("mail.smtp.debug", "true");
	p.put("mail.smtp.socketFactory.port", "465");
	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	p.put("mail.smtp.sockerFactory.fallback", "false");
	
	try{
		Authenticator auth = new Gmail();
		Session ses = Session.getInstance(p, auth);
		ses.setDebug(true);
		MimeMessage msg = new MimeMessage(ses);
		msg.setSubject(subject);
		Address fromAddr = new InternetAddress(from);
		msg.setFrom(fromAddr);
		Address toAddr = new InternetAddress(to);
		msg.addRecipient(Message.RecipientType.TO, toAddr);
		msg.setContent(content, "text/html; charset=UTF8");
		
		//메일전송 코드
		Transport.send(msg);
	}catch(Exception e){
		Script.moving(response, "오류가 발생했습니다.");
	}
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
     <title>Bright a Bootstrap HTML5 Education Template</title>
    <!-- Bootstrap CSS -->    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
    <!-- Main Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/main.css">
    <!-- Normalize Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/normalize.css">
    <!-- Fonts Awesome -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/fonts/font-awesome.min.css">
 
    <!-- Animate CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/animate.css" type="text/css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/owl.theme.css" type="text/css">
    <!-- Rev Slider Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/settings.css" type="text/css">
    <!-- Nivo Lightbox Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/extras/nivo-lightbox.css" type="text/css">
    <!-- Slicknav Css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slicknav.css" type="text/css">
    <!-- Responsive Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/responsive.css">

    <!-- Color CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/colors/sky.css" media="screen" />
  
  <title>Cos Blog</title>
</head>
<body>
<!-- Navigation -->
<jsp:include page="/include/header.jsp"/>

<br>
<br>
<div class="container">
	<!-- Login Form -->
	<div class="row">
  	<!-- Blog Entries Column -->
	  <div class="col-md-12 my-order">
			<div class="content-section">
		
					<div class="alert alert-success md-4" role="alert">
						이메일 주소 인증 메일이 전송되었습니다. 회원가입시 입력했던 이메일에 들어가셔서 인증해주세요.

					</div>
			</div>
		</div>
  </div>
  						<br>
  						<br>
						<br>				
						<br>				
						<br>
						<br>								
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
																
  <!-- ./row -->
  </div>
<!-- ./container -->
</body>
<!-- footer -->

<jsp:include page="/include/footer.jsp"/>

</html>
