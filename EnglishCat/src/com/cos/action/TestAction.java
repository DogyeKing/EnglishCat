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
		
		// DB������ ���� TestAction Ŭ����
		// dto�� ���� �ʿ����, dao�ϳ� �����
		TestDAO dao = new TestDAO();
		dao.test();
		
	}
}




