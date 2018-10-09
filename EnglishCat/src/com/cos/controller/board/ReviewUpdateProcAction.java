package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dto.ContReviewVO;
import com.cos.util.Script;

public class ReviewUpdateProcAction implements Action {
	private static String naming = "ReviewUpdateAction : ";

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(naming);

		ContReviewVO contReviewVO = new ContReviewVO();
		contReviewVO.setCont_id(request.getParameter("cont_id"));
		contReviewVO.setCont_title(request.getParameter("cont_title"));
		contReviewVO.setCont_content(request.getParameter("cont_content"));
		
		

		String url = "board?cmd=review_detail&cont_id=" + contReviewVO.getCont_id();
		ContReviewDAO contReviewDAO = new ContReviewDAO();

		int result = contReviewDAO.update(contReviewVO);
		if (result == 1) {
			Script.moving(response, "글수정 성공", url);
		}else if(result == -1) {
			System.out.println(naming + "update error");
			Script.moving(response, "업데이트 에러");
		}
	}
}
