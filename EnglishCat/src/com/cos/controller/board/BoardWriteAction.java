package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dto.ContReviewVO;
import com.cos.util.Script;

public class BoardWriteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "main.jsp";
		
		
ContReviewVO contReviewVO = new ContReviewVO();
		ContReviewDAO contReviewDAO = new ContReviewDAO();
		
		contReviewVO.setCont_title(request.getParameter("cont_title"));
		contReviewVO.setCont_content(request.getParameter("cont_content"));
		contReviewVO.setUser_pid(request.getParameter("user_pid"));
		System.out.println("안뙤니?");
		int result = contReviewDAO.write(contReviewVO);

		if(result == 1) {
			System.out.println("끌스끼 썽꽁");
			Script.moving(response, "글쓰기 성공", url);
			
		}else if(result == -1){
			Script.moving(response, "글쓰기 실패");
		}
	
		
	}
}
