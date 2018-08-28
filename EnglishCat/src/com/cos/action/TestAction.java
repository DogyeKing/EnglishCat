package com.cos.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.dao.TestDAO;

public class TestAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// DB연결을 위한 TestAction 클래스
		// dto는 현재 필요없고, dao하나 만들기
		TestDAO dao = new TestDAO();
		dao.test();
		
	}
}




