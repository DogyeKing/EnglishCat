package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.dto.UserLevelTestVO;
import com.cos.util.DBManager;

public class UserLevelTestDAO {
   private PreparedStatement pstmt;
   private ResultSet rs;
   
   public int insert(UserLevelTestVO userLevel) {
      String SQL = "insert into TB_USER_LEVEL_TEST values(?,?,sysdate)";
      Connection conn = DBManager.getConnection();
      
      try {
         pstmt = conn.prepareStatement(SQL);
         pstmt.setString(1, userLevel.getUser_pid());
         pstmt.setInt(2, userLevel.getScore());
         pstmt.executeUpdate();
         return 1;
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, pstmt);
      }
      return -1;
   }
   
   public int update(UserLevelTestVO userLevel) {
      String SQL = "update TB_USER_LEVEL_TEST set(score = ?, update_dt = sysdate) where user_pid = ?";
      Connection conn = DBManager.getConnection();
      
      try {
         pstmt = conn.prepareStatement(SQL);         
         pstmt.setInt(1, userLevel.getScore());
         pstmt.setString(2, userLevel.getUser_pid());
         pstmt.executeUpdate();
         return 1;
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, pstmt);
      }
      return -1;
   }
   
   public UserLevelTestVO findScore(String user_pid) {
      String SQL = "select score, update_dt from TB_USER_LEVEL_TEST where user_pid = ?";
      Connection conn = DBManager.getConnection();
      
      try {
         pstmt = conn.prepareStatement(SQL);
         pstmt.setString(1, user_pid);
         rs = pstmt.executeQuery();
         if(rs.next()) {
            UserLevelTestVO userLevel = new UserLevelTestVO();
            userLevel.setUser_pid(user_pid);
            userLevel.setScore(rs.getInt("score"));
            userLevel.setUpdate_dt(rs.getString("UPDATE_DT"));            
            
            return userLevel;
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return null;
   }

}