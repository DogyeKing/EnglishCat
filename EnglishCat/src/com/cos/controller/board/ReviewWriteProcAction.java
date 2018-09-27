package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dao.RegistDAO;
import com.cos.dto.ContReviewVO;
import com.cos.util.Script;

public class ReviewWriteProcAction implements Action {
	private static String naming = "ReviewWriteActionProc : "; 
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println(naming);
		
		ContReviewVO contReviewVO = new ContReviewVO();
		RegistDAO rdao = new RegistDAO();
		
		HttpSession session = request.getSession();
		//user_pid 세션값을 가져온다.
		contReviewVO.setUser_pid((String)session.getAttribute("user_pid"));
		contReviewVO.setCont_title(request.getParameter("cont_title"));
		contReviewVO.setCont_content(request.getParameter("cont_content"));
		
		//user_id세션값을 user_pid로 호출
		//contReviewVO.setUser_pid(rdao.get_pid(user_id)); <- 뭐지용?

		String url = "board?cmd=review_list";
		ContReviewDAO contReviewDAO = new ContReviewDAO();

		int result = contReviewDAO.write(contReviewVO);
		if (result == 1) {
			Script.moving(response, "글쓰기 성공", url);
		}else if(result == -1) {
			System.out.println(naming + "write error");
			Script.moving(response, "글쓰기 에러");
		
	}
 } 
}