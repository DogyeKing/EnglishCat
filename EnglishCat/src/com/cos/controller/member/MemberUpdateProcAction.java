package com.cos.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.RegistDAO;
import com.cos.dto.RegistVO;
import com.cos.util.SHA256;
import com.cos.util.Script;

public class MemberUpdateProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String url = "member?cmd=member_update";
		String url = "index.jsp";
		
		RegistDAO dao = new RegistDAO();
		RegistVO regist = new RegistVO();
		
		String user_pid = request.getParameter("user_pid");
		String user_id = request.getParameter("user_id");
		String salt = dao.select_salt(user_id);
		String user_pass = SHA256.getEncrypt(request.getParameter("user_pass"), salt);
		String user_phone = request.getParameter("user_phone");
		String user_mail = request.getParameter("user_mail");
		String roadFullAddr = request.getParameter("roadFullAddr");
		
		
		/*String user_pid = request.getParameter("user_pid");
		String user_mail = request.getParameter("user_mail");
		String user_id = request.getParameter("user_id");
		String salt = dao.select_salt(user_id);
		String user_pass = SHA256.getEncrypt(request.getParameter("user_pass"), salt);
		String roadFullAddr = request.getParameter("roadFullAddr");*/
		
		
		/*regist.setUser_pid(user_pid);
		regist.setUser_id(user_id);
		regist.setUser_pass(user_pass);		
		regist.setRoadFullAddr(roadFullAddr);		
		regist.setUser_mail(user_mail);*/
		
		regist.setUser_id(user_id);
		regist.setUser_pid(user_pid);
		regist.setUser_pass(user_pass);
		regist.setUser_phone(user_phone);
		regist.setUser_mail(user_mail);
		regist.setRoadFullAddr(roadFullAddr);
		
		
		int result = dao.update(regist);
		if(result == 1) {
			Script.moving(response, "회원정보 수정 완료", url);
		}else if(result == -1) {
			Script.moving(response, "DB 에러");
		}
	}
}
