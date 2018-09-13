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

public class ReviewWriteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "board?cmd=review_list";
		
		
		ContReviewVO contReviewVO = new ContReviewVO();
		ContReviewDAO contReviewDAO = new ContReviewDAO();
		//세션 연결
		RegistDAO registDAO = new RegistDAO();
		
		String user_id = null;
		HttpSession session = request.getSession();
		
		if(session.getAttribute("user_id") != null) {
			user_id = (String)session.getAttribute("user_id");
			int result = registDAO.check_id(user_id);
			
				if(result != 1) {
					Script.moving(response, "먼저 인증을 해주세요", "member?cmd=member_update");
				}else{
					//session과 user_id와 연동하기 
					/*contReviewVO.setUser_pid(request.getParameter("user_pid"));*/
				
					contReviewVO.setCont_title(request.getParameter("cont_title"));
					contReviewVO.setCont_content(request.getParameter("cont_content"));
					RegistDAO rdao = new RegistDAO();
					contReviewVO.setUser_pid(rdao.get_pid(user_id));

					int result2 = contReviewDAO.write(contReviewVO);
					if(result2 == 1) {
						Script.moving(response, "글쓰기성공", url);
					}else if(result == -1) {
						Script.moving(response, "DB 에러");
					}
				}
		}else {
			Script.moving(response, "먼저 로그인을 진행해주세요.", "account/login.jsp");
		}
		
	

	


	
		
	}
}
