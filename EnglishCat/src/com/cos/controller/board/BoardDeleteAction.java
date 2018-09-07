package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.util.Script;

public class BoardDeleteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*		String url = "index.jsp";
		ContReviewDAO contReviewDAO = new ContReviewDAO();
		
		String cont_id = request.getParameter("cont_id");
		
		int result = contReviewDAO.delete(cont_id);
		
		if(result == 1) {
			Script.moving(response, "게시글 삭제", url);
		} else if(result == -1){
			Script.moving(response, "게시글 삭제 실패");
		}*/
		
	}
	
	
}
