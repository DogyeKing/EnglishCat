package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.dto.ContReviewVO;
import com.cos.util.DBManager;


public class ContReviewDAO {

		private PreparedStatement pstmt;
		private ResultSet rs;
		
		public List<ContReviewVO> select_paging(){
			String SQL = "select * from tb_cont_review";
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);		
				System.out.println("SQL문 : " +SQL);
				rs = pstmt.executeQuery();
				List<ContReviewVO> list = new ArrayList<>();
	
				while (rs.next()) {
					ContReviewVO contReview = new ContReviewVO();
					contReview.setCont_id(rs.getString("cont_id"));
					contReview.setCont_title(rs.getString("cont_title"));
					contReview.setCont_content(rs.getString("cont_content"));
					contReview.setUser_id(rs.getString("user_id"));
					contReview.setCont_read_cnt(rs.getInt("cont_read_cnt"));
					list.add(contReview);					
				}
				
				return list;
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				DBManager.close(conn, pstmt, rs);
			}return null;
			
			
		}
		
		public int insert(ContReviewVO contReview) {
			String SQL = "insert into cont_review(cont_title, cont_content, user_id) value(?,?,?)";
			Connection conn = DBManager.getConnection();
			
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, contReview.getCont_title());
				pstmt.setString(2, contReview.getCont_content());
				pstmt.setString(3, contReview.getCont_id());
				pstmt.executeUpdate();
				return 1;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}	return -1;
					
			
		}
		
		
	
}
