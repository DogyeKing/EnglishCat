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

public class MemberUpdateAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "account/updateForm.jsp";
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
				
		RegistDAO dao = new RegistDAO();
		RegistVO regist = dao.select(user_id);

		request.setAttribute("member", regist);
		
		if(session.getAttribute("naver_id") != null) {
			Script.moving(response, "네이버 아이디로 로그인하셧습니다.", "index.jsp");
		} else if(regist == null) {
			Script.moving(response, "먼저 로그인을 진행해주세요.", "account/login.jsp");
		} else {
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		}
	}
}
