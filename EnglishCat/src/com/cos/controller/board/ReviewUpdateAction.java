package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dto.ContReviewVO;
import com.cos.util.Script;

public class ReviewUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String url = "board/reviewList.jsp";
	
	ContReviewDAO contReviewDAO = new ContReviewDAO();
	ContReviewVO contReviewVO = new ContReviewVO();
	
	contReviewVO.setCont_title(request.getParameter("cont_title"));
	contReviewVO.setCont_content(request.getParameter("cont_content"));
	contReviewVO.setUser_pid(request.getParameter("user_pid"));
	
	int result = contReviewDAO.update(contReviewVO);
	if ( result == 1) {
		System.out.println("업데이트 성공");
		Script.moving(response, "업데이트 성공", url);
	}else {
		Script.moving(response, "업데이트 실패", url);
	}
	}
}
