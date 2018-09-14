<%@page import="com.cos.util.Script"%>
<%@page import="com.cos.util.SHA256"%>
<%@page import="com.cos.dao.RegistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String url = request.getContextPath()+"/index.jsp";
	RegistDAO dao = new RegistDAO();
	String user_pid = null;
	if(session.getAttribute("user_pid") != null){
		user_pid = (String)session.getAttribute("user_pid");
	}
	
	System.out.println(user_pid);
	
	String code = request.getParameter("code");
	String email = dao.select_user_mail(user_pid);
	String salt = dao.select_salt(user_pid);
	String emailHash = SHA256.getEncrypt(email, salt);
	
	System.out.println("email : "+email);
	System.out.println("code : "+code);
	System.out.println("emailHash : "+emailHash);
	
	boolean isTrue = emailHash.equals(code) ? true : false;
	
	if(isTrue){
		int result = dao.update_user_mail_avail_yn(user_pid);
		if(result == 1){
			Script.moving(response, "인증에 성공하였습니다.", url);
		}else{
			Script.moving(response, "데이터베이스 오류");
		}
	}else{
		Script.moving(response, "인증에 실패하였습니다.");
	}
%>