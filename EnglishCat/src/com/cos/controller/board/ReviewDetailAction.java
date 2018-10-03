package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dao.RegistDAO;
import com.cos.dto.ContReviewVO;

public class ReviewDetailAction implements Action {

	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "board/reviewDetail.jsp";
	
		String cont_id = request.getParameter("cont_id");		
		HttpSession session = request.getSession();
		String user_pid= null;
		user_pid= (String)session.getAttribute("user_pid");

		
		ContReviewDAO contReviewDAO = new ContReviewDAO();
		
		ContReviewVO contReviewVO = contReviewDAO.select(cont_id);
		
		//세션을 가진 사람과 글을 읽는 사람이 같으면 check_pid를 보냄.
		if(user_pid != null && user_pid.equals(contReviewVO.getUser_pid())) {
		request.setAttribute("check_pid", "ok");
		}
		
		RegistDAO rdao = new RegistDAO();
		contReviewVO.setUser_pid(rdao.get_id(contReviewVO.getUser_pid()));
		
		request.setAttribute("contReviewVO", contReviewVO);
		
		RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request, response);

	}
}
