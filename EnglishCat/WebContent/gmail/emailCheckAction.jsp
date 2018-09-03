<%@page import="com.cos.util.Script"%>
<%@page import="com.cos.util.SHA256"%>
<%@page import="com.cos.dao.RegistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String url = request.getContextPath()+"/index.jsp";
	RegistDAO dao = new RegistDAO();
	String user_id = null;
	if(session.getAttribute("user_id") != null){
		user_id = (String)session.getAttribute("user_id");
	}
	
	String code = request.getParameter("code");
	String email = dao.select_email(user_id);
	String salt = dao.select_salt(user_id);
	String emailHash = SHA256.getEncrypt(email, salt);
	
	System.out.println("email : "+email);
	System.out.println("code : "+code);
	System.out.println("emailHash : "+emailHash);
	
	boolean isTrue = emailHash.equals(code) ? true : false;
	
	if(isTrue){
		int result = dao.update_user_mail_yn(user_id);
		if(result == 1){
			Script.moving(response, "인증에 성공하였습니다.", url);
		}else{
			Script.moving(response, "데이터베이스 오류");
		}
	}else{
		Script.moving(response, "인증에 실패하였습니다.");
	}
%>