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

public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "board/viewPage.jsp";

		ContReviewDAO contReviewDAO = new ContReviewDAO();
		ContReviewVO contReviewVO = new ContReviewVO();
		

	   	if (contReviewVO == null) {
			Script.moving(response, "view 에러");
		} else {
			contReviewVO.setCont_id(contReviewVO.getCont_id());
			contReviewVO.setCont_content(contReviewVO.getCont_title());
			request.setAttribute("contReviewVO", contReviewVO);
			
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		}
	}
}
