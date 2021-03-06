package com.cos.controller.member;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.action.Action;
import com.cos.dao.UserLevelTestDAO;
import com.cos.dto.UserLevelTestVO;
import com.cos.util.Script;

public class MemberLevelTestAction implements Action {
   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "apply/levelTestFinish.jsp";
      
      String[] answer = { "2", "3", "5", "1", "1", "3", "4", "3", "1", "1", "5", "3", "5", "1", "2", "2", "2", "4",
            "2", "3" };
      
      int score = 0;
      for (int i = 0; i < 20; i++) {
         if (request.getParameter("question" + (i+1)).equals(answer[i])) {
            score += 5;
         }
      }
      System.out.println(score);
      UserLevelTestVO userLevel = new UserLevelTestVO();
      UserLevelTestDAO dao = new UserLevelTestDAO();
      
      HttpSession session = request.getSession();
      String user_pid = (String)session.getAttribute("user_pid");
      userLevel.setUser_pid(user_pid);
      userLevel.setScore(score);
      
      int result = 0;
      
      if(dao.findScore(user_pid) != null) {
         result = dao.update(userLevel);
      }else {
         result = dao.insert(userLevel);
      }
      
      if(result == 1) {
    	 Script.moving(response, "레벨테스트 완료", url);
      }else if(result == -1) {
    	 Script.moving(response, "DB에러");
      }
      
      
      
   }

}