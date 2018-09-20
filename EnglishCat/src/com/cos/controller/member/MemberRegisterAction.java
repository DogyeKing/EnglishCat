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
		String user_pid = null;
		String user_pass = null;
		String user_name = null;
		String user_phone = null;
		String user_mail = null;
		String roadFullAddr = null;
		String user_zipcode= null;
		String salt = SHA256.generateSalt();
		
		
		if(request.getParameter("user_id") != null) {
			user_id = request.getParameter("user_id");
			System.out.println(user_id);
		}
		
		if(request.getParameter("user_pass") != null) {
			System.out.println("user_pass is not null");
			user_pass = request.getParameter("user_pass");
			System.out.println(user_pass+"+"+salt);
			//패스워드를 SHA256으로 해쉬하기
			user_pass = SHA256.getEncrypt(user_pass, salt);
		}
		
		if(request.getParameter("user_name") != null) {
			user_name = request.getParameter("user_name");
		}
		
		if(request.getParameter("user_phone") != null) {
			user_phone = request.getParameter("user_phone");
		}

		if(request.getParameter("user_mail") != null) {
			user_mail = request.getParameter("user_mail");
		}
		
		if(request.getParameter("roadFullAddr") != null) {
			roadFullAddr = request.getParameter("roadFullAddr");
		}
		
		// next pid ���� DB���� ������
		String next_pid = dao.selectUserNextPid();
		System.out.println("next_pid : " + next_pid);
		
		regist.setUser_pid(next_pid);
		regist.setUser_id(user_id);
		regist.setUser_pass(user_pass);
		regist.setUser_name(user_name);
		regist.setUser_phone(user_phone);
		regist.setUser_mail(user_mail);
		regist.setRoadFullAddr(roadFullAddr);
		regist.setUser_zipcode(user_zipcode);
		regist.setSalt(salt);
		
		
		int result = dao.insertUserInfo(regist);
		
		if(result == 1) {
			
			HttpSession session = request.getSession();
			session.setAttribute("user_pid", regist.getUser_pid());
			Script.moving(response, "구글 인증 페이지", url);
		}else if(result == -1) {
			
			Script.moving(response, "구글 인증 페이지 데이터베이스 에러");
		}
	}
}
