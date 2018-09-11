package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dto.ContReviewVO;
import com.cos.util.Script;

public class ReviewUpdateAction implements Action {
	private static String naming = "ReviewUpdateAction : ";
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println(naming);
		
	String url = "board/ReviewUpdateForm.jsp";
	
	String cont_id = request.getParameter("cont_id");
	
	ContReviewDAO contReviewDAO = new ContReviewDAO();
	ContReviewVO contReviewVO = contReviewDAO.select(cont_id);
	
	
	if (contReviewVO == null) {
		System.out.println(naming + "update error");
		Script.moving(response, "데이터 베이스 에러");
	}else {
		request.setAttribute("contReviewVO", contReviewVO);
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
	}
	}
}
