package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.util.Script;

public class ReviewDeleteAction implements Action{
	private static String naming = "ReviewDeleteAction : ";
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(naming);
		String url = "board?cmd=review_list";
		String cont_id = request.getParameter("cont_id");
		
		
		ContReviewDAO contReviewDAO = new ContReviewDAO();
		int result = contReviewDAO.delete(cont_id);
		
		if(result == 1) {
			Script.moving(response, "삭제 성공", url);
			
		}else if(result == -1) {
			System.out.println(naming + "삭제 실패");
			Script.moving(response, "삭제 에러");
		}
			
			
			
		
		
		
		
		
	}
}
