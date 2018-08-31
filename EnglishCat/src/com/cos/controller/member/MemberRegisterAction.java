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

public class MemberRegisterAction implements Action{
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
		String roadFullAddr = null;
		String user_zipcode= null;
		String salt = SHA256.generateSalt();
		
		System.out.println(1);
		if(request.getParameter("user_id") != null) {
			user_id = request.getParameter("user_id");
			System.out.println(user_id);
		}
		System.out.println(2);
		if(request.getParameter("user_pass") != null) {
			System.out.println("user_pass is not null");
			user_pass = request.getParameter("user_pass");
			System.out.println(user_pass+"+"+salt);
			//패스워드를 SHA256으로 해쉬하기
			user_pass = SHA256.getEncrypt(user_pass, salt);
		}
		System.out.println(3);
		if(request.getParameter("user_name") != null) {
			user_name = request.getParameter("user_name");
		}
		System.out.println(4);
		if(request.getParameter("roadFullAddr") != null) {
			roadFullAddr = request.getParameter("roadFullAddr");
		}
		System.out.println(5);
		if(request.getParameter("user_mail") != null) {
			user_mail = request.getParameter("user_mail");
		}
		regist.setUser_id(user_id);
		System.out.println(6);
		regist.setUser_pass(user_pass);
		regist.setUser_name(user_name);
		regist.setUser_phone(user_phone);
		regist.setUser_mail(user_mail);
		regist.setRoadFullAddr(roadFullAddr);
		regist.setUser_zipcode(user_zipcode);
		regist.setSalt(salt);
		System.out.println(7);
		
		int result = dao.insert(regist);
		System.out.println(8);
		if(result == 1) {
			System.out.println(9);
			HttpSession session = request.getSession();
			session.setAttribute("user_id", regist.getUser_id());
			Script.moving(response, "구글 인증 페이지", url);
		}else if(result == -1) {
			System.out.println(10);
			Script.moving(response, "데이터베이스 에러");
		}
	}
}