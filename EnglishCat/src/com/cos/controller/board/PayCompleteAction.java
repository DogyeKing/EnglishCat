package com.cos.controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.PayDAO;
import com.cos.dto.PayVO;
import com.cos.util.Script;

public class PayCompleteAction implements Action{

@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";
		
		PayDAO dao = new PayDAO();
		PayVO pay = new PayVO();
		int result =  dao.insert(pay);
		
		if(result != 1) {
			Script.moving(response, "결제 오류");
		}else {
			
			RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);
		}
		
}
}