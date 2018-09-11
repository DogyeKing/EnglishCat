package com.cos.controller.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.ContReviewDAO;
import com.cos.dto.ContReviewVO;
import com.google.gson.Gson;

public class AjaxAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ContReviewDAO contReviewDAO = new ContReviewDAO();
		ContReviewVO ajax = contReviewDAO.select_ajax();		
	
		if(ajax != null) {
			 Gson gson = new Gson();		      
		      String jsonData = gson.toJson(ajax);
		      System.out.println(jsonData);
		      PrintWriter out = response.getWriter();
		      out.println(jsonData);
		}else {
			System.out.println("ajax null");
		}
	}
}
