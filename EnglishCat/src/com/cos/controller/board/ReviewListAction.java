package com.cos.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dto.ContReviewVO;
import com.cos.util.Script;

public class ReviewListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "board/reviewList.jsp";
		ContReviewDAO contReviewdao = new ContReviewDAO();

		List<ContReviewVO> list = contReviewdao.contReviewSelectList(1);
		int page_len = contReviewdao.contReviewSelectPageLen();

		request.setAttribute("list", list);
		request.setAttribute("page_len", page_len);
		
		
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);
		
	}
}
