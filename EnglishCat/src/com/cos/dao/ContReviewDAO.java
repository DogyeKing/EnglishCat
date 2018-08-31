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
				rs = pstmt.executeQuery();
				List<ContReviewVO> list = new ArrayList<>();
	
				while (rs.next()) {
					ContReviewVO contReviewVO = new ContReviewVO();
					contReviewVO.setCont_id(rs.getString("cont_id"));
					contReviewVO.setCont_title(rs.getString("cont_title"));
					contReviewVO.setCont_content(rs.getString("cont_content"));
					contReviewVO.setUser_id(rs.getString("user_id"));
					contReviewVO.setCont_read_cnt(rs.getInt("cont_read_cnt"));
					list.add(contReviewVO);					
				}
				
				return list;
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				DBManager.close(conn, pstmt, rs);
			}return null;
			
			
		}
		
		public int write(ContReviewVO contReview) {
			String SQL = "insert into tb_cont_review(cont_id, cont_title, cont_content, user_id, insert_dt) values (?,?,?,?,sysdate)";
			Connection conn = DBManager.getConnection();
			
			try {
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setString(1, "1243");
				pstmt.setString(2, contReview.getCont_title());
				pstmt.setString(3, contReview.getCont_content());
				pstmt.setString(4, "2343");				
				
				pstmt.executeUpdate();
				return 1;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}	return -1;

		}
		
		public int delete(String cont_id ) {
			String SQL = "delete tb_cont_review where cont_id = ?";
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, cont_id);
				pstmt.executeUpdate();
				return 1;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			} return -1;
		}
	
}
