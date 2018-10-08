package com.cos.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.action.Action;
import com.cos.dao.RegistDAO;
import com.cos.dao.UserLevelTestDAO;
import com.cos.dto.RegistVO;
import com.cos.dto.UserLevelTestVO;
import com.cos.util.Script;

public class MemberUpdateAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "account/updateForm.jsp";
		
		HttpSession session = request.getSession();
		String user_pid = (String)session.getAttribute("user_pid");
		System.out.println(user_pid);
		RegistDAO dao = new RegistDAO();
		RegistVO regist = dao.select(user_pid);		
		UserLevelTestDAO udao = new UserLevelTestDAO();
		UserLevelTestVO level = udao.findScore(user_pid);

		request.setAttribute("member", regist);
		request.setAttribute("level", level);
		
		if(dao.login_confirm(user_pid).equals("NAVER_USER")) {
			Script.moving(response, "네이버 아이디로 로그인하셨습니다.", "index.jsp");
		} else if(regist == null) {
			Script.moving(response, "먼저 로그인을 진행해주세요.", "account/login.jsp");
		} else {
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		}
	}
}
