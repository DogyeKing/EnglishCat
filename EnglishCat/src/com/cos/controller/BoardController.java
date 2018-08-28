package com.cos.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.action.ActionFactory;

@WebServlet("/board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String naming = "BoardController : ";
	
    public BoardController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String cmd = null;
		if(request.getParameter("cmd") != null) {
			cmd = request.getParameter("cmd");
		}
		
		// 팩토리에 객체생성 위임.
		// 테스트 방법(index.jsp 필요업음)
		// 서버 실행시키고
		// http://localhos:8000/Board/board?cmd=test
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(cmd);
		if(action != null) action.execute(request, response);
		
		
	}
	
}



