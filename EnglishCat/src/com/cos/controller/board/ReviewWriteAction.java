package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dao.RegistDAO;
import com.cos.dto.ContReviewVO;
import com.cos.util.Script;


//writeActionPro로 연결시켜줌
public class ReviewWriteAction implements Action{
	private static String naming = "reviewWriteAction : ";
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "board/reviewWriteForm.jsp";
		System.out.println(naming);
		
		ContReviewVO contReviewVO = new ContReviewVO();

		//세션 연결
		RegistDAO registDAO = new RegistDAO();
		//ㅇㅇ
		String user_pid = null;
		HttpSession session = request.getSession();
		
		if(session.getAttribute("user_pid") != null) {
			
			if(session.getAttribute("user_pid") != null) {
				user_pid = (String)session.getAttribute("user_pid");
				System.out.println(user_pid);
			}
			
			int result = registDAO.select_user_mail_avail_yn(user_pid);
				System.out.println(result);
				if(result != 1) {
					Script.moving(response, "먼저 인증을 해주세요");
				}else{
					//session과 user_pid와 연동하기 
					/*contReviewVO.setUser_pid(request.getParameter("user_pid"));*/
					// session.setAttribute("user_pid", user_pid); 안씁니다.
					request.setAttribute("contReviewVO", contReviewVO);
					RequestDispatcher dis = request.getRequestDispatcher(url);
					dis.forward(request, response);

				}
		}else {
			Script.moving(response, "먼저 로그인을 진행해주세요.", "account/login.jsp");
		}
	}
}
