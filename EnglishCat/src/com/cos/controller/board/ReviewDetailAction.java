package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dto.ContReviewVO;

public class ReviewDetailAction implements Action {

	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "board/reviewDetail.jsp";
	
		String cont_id = request.getParameter("cont_id");

		
		ContReviewDAO contReviewDAO = new ContReviewDAO();
		
		ContReviewVO contReviewVO = contReviewDAO.select(cont_id);
				
		request.setAttribute("contReviewVO", contReviewVO);
		
		RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request, response);

	}
}
