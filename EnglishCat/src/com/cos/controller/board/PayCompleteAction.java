package com.cos.controller.board;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.cos.action.Action;
import com.cos.dao.PayDAO;
import com.cos.dto.PayVO;
import com.cos.util.Script;

public class PayCompleteAction implements Action {

@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	BufferedReader in = request.getReader();
    StringBuffer sb = new StringBuffer();
    String line = null;
    while((line = in.readLine()) != null) {
       sb.append(line);
       System.out.println("ajax data : "+line);
       
    }
    System.out.println(sb.toString());
	
	
		
		PayDAO dao = new PayDAO();
		PayVO pay = new PayVO();
		
		HttpSession session = request.getSession();
		String user_pid = (String) session.getAttribute("user_pid");
		pay.setUser_pid(user_pid);
		System.out.println(user_pid);
		//여기서부터
		
		JSONParser parser = new JSONParser();
		JSONObject json;
		try {
			json = (JSONObject)parser.parse(sb.toString());
			System.out.println("json : "+json);
			System.out.println("imp_uid"+json.get("imp_uid"));
			pay.setImp_uid((String)json.get("imp_uid"));			
			pay.setMerchant_uid((String)json.get("merchant_uid"));
			pay.setPaid_amount((long)json.get("paid_amount"));
			pay.setApply_num((String)json.get("apply_num"));			
			
		} catch (ParseException e) {
		
			e.printStackTrace();
		}
		if(pay.getPaid_amount()==100) {
			pay.setMonth("1개월");
			pay.setTimes("2회");
			pay.setMinutes("25분");
		}
		

		int result =  dao.insert(pay);
		PrintWriter out = response.getWriter();
		if(result != 1) {
			out.println("fail");
		}else {
			out.println("success");			
		}
		
}
}