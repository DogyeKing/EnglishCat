package com.cos.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.action.Action;
import com.cos.dao.RegistDAO;
import com.cos.dto.RegistVO;
import com.cos.util.Script;

public class MemberPayAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "account/payment.jsp";
		
		HttpSession session = request.getSession();
		String user_pid = (String)session.getAttribute("user_pid");
		
		RegistDAO dao = new RegistDAO();
		RegistVO regist = dao.select(user_pid);
		
		request.setAttribute("member", regist);
		
		if(session.getAttribute("naver_id") != null) {
			Script.moving(response, "네이버 아이디로 로그인하셨습니다.", url);
		} else if(regist == null) {
			Script.moving(response, "먼저 로그인을 진행해주세요.", "account/login.jsp");
		} else {
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);	
		}
	}
	
}
