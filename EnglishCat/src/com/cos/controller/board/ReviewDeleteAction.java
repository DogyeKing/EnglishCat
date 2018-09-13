package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dao.RegistDAO;
import com.cos.util.Script;

public class ReviewDeleteAction implements Action{
	
	private static String naming = "ReviewDeleteAction : ";
		@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(naming);
		
		String url = "board?cmd=review_list";
		ContReviewDAO contReviewDAO = new ContReviewDAO();
		RegistDAO rdao = new RegistDAO();
		String cont_id = request.getParameter("cont_id");

		// 세션받기 -- 주소공격 방지
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("user_id");
		String user_pid = rdao.get_pid(user_id);

		int result2 = contReviewDAO.checkId(cont_id, user_pid);
		
		if( result2 == 1) {
			int result = contReviewDAO.delete(cont_id);
			
			if(result == 1) {
				Script.moving(response, "삭제 성공", url);			
			
			}else if(result == -1) {
				Script.moving(response, "삭제 에러");
		}
	  }
  }
}
