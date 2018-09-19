package com.cos.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.FreeLevelTestDAO;
import com.cos.dto.FreeLevelTestVO;
import com.cos.util.Script;

public class MemberFreeTestAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "apply/freeLevelTest.jsp";
		
		FreeLevelTestVO regist = new FreeLevelTestVO();
		FreeLevelTestDAO dao = new FreeLevelTestDAO();
		
		regist.setName(request.getParameter("name"));
		regist.setAge(request.getParameter("age"));
		regist.setPhone(request.getParameter("phone"));
		regist.setEmail(request.getParameter("email"));
		regist.setContent(request.getParameter("content"));
		
		int result = dao.insert(regist);
		if(result == 1) {
			Script.moving(response, "무료체험신청완료", url);
		}else if(result == -1) {
			Script.moving(response, "무료체험신청 실패", url);
		}
		
		/*String name = null;
		String age = null;
		String phone = null;
		String email = null;
		String content = null;*/
		
	/*	if(request.getParameter("name") != null) {
			name = request.getParameter("name");
			System.out.println("name");
		}
		
		if(request.getParameter("age") != null) {
			age = request.getParameter("age");
		}
		
		if(request.getParameter("phone") != null) {
			phone = request.getParameter("phone");
		}

		if(request.getParameter("email") != null) {
			email = request.getParameter("email");
		}
		
		if(request.getParameter("content") != null) {
			content = request.getParameter("content");
		}
		
		int result = dao.insert(regist);
		
		regist.setName(name);
		regist.setAge(age);
		regist.setPhone(phone);
		regist.setEmail(email);
		regist.setContent(content);
		

		
		if(result == 1) {
			
			HttpSession session = request.getSession();
			session.setAttribute("name", regist.getName());
			Script.moving(response, "성공적으로 무료신청이 접수되었습니다", url);
		}else if(result == -1) {
			
			Script.moving(response, "무료체험 신청 데이터베이스 에러");
		}*/
	}
}
