package com.cos.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.action.Action;
import com.cos.dao.RegistDAO;
import com.cos.dto.RegistVO;
import com.cos.util.Script;
import com.cos.util.SHA256;

public class MemberLoginAction implements Action{
	private static String naming = "MemberLoginAction : ";
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";
		
		RegistDAO dao = new RegistDAO();
		RegistVO regist = new RegistVO();
		
		String user_id = request.getParameter("user_id");
		String salt = dao.select_salt(user_id);
		if(salt == null){
			Script.moving(response, "아이디가 존재하지 않습니다.");
		}
		String user_pass = SHA256.getEncrypt(request.getParameter("user_pass"), salt);
		
		regist.setUser_id(user_id);
		regist.setUser_pass(user_pass);

		
		//쿠키저장
		if(request.getParameter("rememberme") != null){
			Cookie cookie = new Cookie("cookieID",regist.getUser_id());
			cookie.setMaxAge(6000);
			response.addCookie(cookie);
		}else{
			Cookie cookie = new Cookie("cookieID",null);
			cookie.setMaxAge(0);
			response.addCookie(cookie); 
		}

		int result = dao.select_id(regist);
		if(result == 1){
			HttpSession session = request.getSession();
			session.setAttribute("user_id", regist.getUser_id());
			Script.moving(response, "로그인 성공", url);
		}else if(result == 2){
			HttpSession session = request.getSession();
			session.setAttribute("user_id", regist.getUser_id());
			Script.moving(response, "미인증 회원입니다. 글쓰기가 제한됩니다.", url);
		}else{
			System.out.println(naming+"sql error");
			Script.moving(response, "비밀번호를 확인하세요.");
		}
	}
}
