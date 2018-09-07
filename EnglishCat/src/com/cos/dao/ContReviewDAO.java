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
		
		
		//게시판 리스트 뽑기
		public List<ContReviewVO> contReviewSelectList(){
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
					contReviewVO.setUser_pid(rs.getString("user_pid"));
					contReviewVO.setInsert_dt(rs.getString("insert_dt"));
					contReviewVO.setUpdate_dt(rs.getString("update_pid"));
					contReviewVO.setUpdate_pid(rs.getString("update_pid"));
					contReviewVO.setDelete_yn(rs.getString("delete_yn"));
					list.add(contReviewVO);					
				}
				return list;
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				DBManager.close(conn, pstmt, rs);
			}return null;
			
			
		}

	//게시판 글쓰기
		public int write(ContReviewVO contReview) {
			String SQL = "INSERT INTO TB_CONT_REVIEW (CONT_ID, CONT_TITLE, CONT_CONTENT, USER_PID, INSERT_DT, UPDATE_DT, UPDATE_PID, DELETE_YN) VALUES (FN_NEXT_PID('MAIN001'), ?, ?, ?, SYSDATE, NULL, NULL, NULL)";

			Connection conn = DBManager.getConnection();
			
			try { 
				pstmt = conn.prepareStatement(SQL); 

		/*		pstmt.setString(1, "a");
				pstmt.setString(2, "a");
				pstmt.setString(3, "a");
				*/
				pstmt.setString(1, contReview.getCont_title());
				pstmt.setString(2, contReview.getCont_content());
				pstmt.setString(3, contReview.getUser_pid());
				
		/*		System.out.println("aaa : \n" + SQL);*/
				pstmt.executeUpdate();
				System.out.println("가즈아~~");
				return 1;

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}	return -1;

		}
		
/*		//게시판 삭제
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
		}*/
		
		
/*		//게시판 보기
		public ContReviewVO view(String cont_id) {
			String SQL = "select * from tb_cont_review where cont_id = ?";
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, cont_id);
				rs = pstmt.executeQuery();
				
					if(rs.next()) {
						ContReviewVO contReviewVO = new ContReviewVO();
						contReviewVO.setCont_id(rs.getString("cont_id"));
						contReviewVO.setCont_title(rs.getString("cont_title"));
						contReviewVO.setCont_content(rs.getString("cont_content"));
						contReviewVO.setUser_id(rs.getString("user_id"));
						contReviewVO.setCont_read_cnt(rs.getInt("cont_read_cnt"));
						return contReviewVO;
					}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			} return null;
			
			*/
		}
	

