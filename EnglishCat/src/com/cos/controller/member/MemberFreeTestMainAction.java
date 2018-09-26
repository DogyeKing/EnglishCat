package com.cos.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.FreeLevelTestDAO;
import com.cos.dto.FreeLevelTestVO;
import com.cos.util.Script;

public class MemberFreeTestMainAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "main.jsp";
		
		FreeLevelTestVO regist = new FreeLevelTestVO();
		FreeLevelTestDAO dao = new FreeLevelTestDAO();
		
		regist.setName(request.getParameter("name"));
		regist.setAge(request.getParameter("age"));
		regist.setPhone(request.getParameter("phone"));
		regist.setEmail(request.getParameter("email"));
		regist.setContent(request.getParameter("content"));
		
		int result = dao.insert(regist);
		if(result == 1) {
			Script.moving(response, "무료체험신청완료", url);
		}else if(result == -1) {
			Script.moving(response, "무료체험신청 실패", url);
		}
		
	}
}
