package com.cos.controller.member;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.action.Action;
import com.cos.dao.RegistDAO;

public class MemberIDCheckAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {			
		BufferedReader in = request.getReader();
	      StringBuffer sb = new StringBuffer();
	      String line = null;
	      while((line = in.readLine()) != null) {
	         sb.append(line);	         
	      }
	      System.out.println("ajax data : "+sb.toString());
	      
	      
	      RegistDAO dao = new RegistDAO();
	      
	      int result = dao.check_id(sb.toString());	      
	      
	      String data = String.valueOf(result);
	      
	      if(result != -1) {
	         PrintWriter out = response.getWriter();
	         out.println(data);
	      }

		
	}

}
