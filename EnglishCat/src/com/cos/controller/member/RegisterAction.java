package com.cos.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.action.Action;
import com.cos.dao.RegistDAO;
import com.cos.dto.RegistVO;
import com.cos.util.SHA256;
import com.cos.util.Script;

public class RegisterAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "gmail/emailSendAction.jsp";
		
		RegistVO regist = new RegistVO();
		RegistDAO dao = new RegistDAO();	
		
		String user_id = null;
		String user_pass = null;
		String user_name = null;
		String user_phone = null;
		String user_mail = null;
		String user_zipcode= null;
		String salt = SHA256.generateSalt();
		
		if(request.getParameter("user_id") != null) {
			user_id = request.getParameter("user_id");
		}
		if(request.getParameter("user_pass") != null) {
			user_pass = request.getParameter("user_pass");
			//패스워드를 SHA256으로 해쉬하기
			user_pass = SHA256.getEncrypt(user_pass, salt);
		}
		if(request.getParameter("user_name") != null) {
			user_name = request.getParameter("user_name");
		}
		if(request.getParameter("roadFullAddr") != null) {
			user_zipcode = request.getParameter("roadFullAddr");
		}
		if(request.getParameter("user_mail") != null) {
			user_mail = request.getParameter("user_mail");
		}
		regist.setUser_id(user_id);
		regist.setUser_pass(user_pass);
		regist.setUser_name(user_name);
		regist.setUser_phone(user_phone);
		regist.setUser_mail(user_mail);
		regist.setUser_zipcode(user_zipcode);
		
		
		int result = dao.insert(regist);
		
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("id", regist.getUser_id());
			Script.moving(response, "구글 인증 페이지", url);
		}else if(result == -1) {
			Script.moving(response, "데이터베이스 에러");
		}
	}
}