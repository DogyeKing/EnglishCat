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
			String SQL = "WITH TEMP_CONT_CNT AS (SELECT COUNT(1) CONT_CNT\r\n" + 
					"        FROM TB_CONT_REVIEW\r\n" + 
					"        WHERE DELETE_YN IS NULL)\r\n" + 
					"    , TEMP_CONT_REVIEW AS (SELECT CONT_ID\r\n" + 
					"            , ROW_NUMBER() OVER(ORDER BY CONT_ID DESC) CONT_SEQ_DESC\r\n" + 
					"            , CONT_TITLE, CONT_CONTENT, USER_PID, INSERT_DT\r\n" + 
					"    FROM TB_CONT_REVIEW\r\n" + 
					"    WHERE DELETE_YN IS NULL\r\n" + 
					"    )\r\n" + 
					"SELECT CONT_ID, (CONT_CNT - CONT_SEQ_DESC + 1) CONT_SEQ\r\n" + 
					"    , TRUNC(CONT_SEQ_DESC/10, 0) CONT_PAGE_SEQ\r\n" + 
					"    , CONT_TITLE, CONT_CONTENT, USER_PID, INSERT_DT\r\n" + 
					"FROM TEMP_CONT_REVIEW, TEMP_CONT_CNT\r\n" + 
					"WHERE TRUNC(CONT_SEQ_DESC/10, 0) = '0'\r\n" + 
					"ORDER BY CONT_SEQ DESC";
			Connection conn = DBManager.getConnection();
			
			try {
				pstmt = conn.prepareStatement(SQL);		
				rs = pstmt.executeQuery();
				List<ContReviewVO> list = new ArrayList<>();
				
									
				while (rs.next()) {
					ContReviewVO contReviewVO = new ContReviewVO();
					contReviewVO.setCont_id(rs.getString("cont_id"));
					contReviewVO.setCont_seq(rs.getString("cont_seq"));
					contReviewVO.setCont_page_seq(rs.getString("cont_page_seq"));
					contReviewVO.setCont_title(rs.getString("cont_title"));
					contReviewVO.setCont_content(rs.getString("cont_content"));
					contReviewVO.setUser_pid(rs.getString("user_pid"));
					contReviewVO.setInsert_dt(rs.getString("insert_dt"));
					/*contReviewVO.setUpdate_dt(rs.getString("update_pid"));
					contReviewVO.setUpdate_pid(rs.getString("update_pid"));
					contReviewVO.setDelete_yn(rs.getString("delete_yn"));*/
					RegistDAO rdao = new RegistDAO();
					contReviewVO.setUser_pid(rdao.get_id(contReviewVO.getUser_pid()));
					
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
				pstmt.setString(1, contReview.getCont_title());
				pstmt.setString(2, contReview.getCont_content());
				pstmt.setString(3, contReview.getUser_pid());
				pstmt.executeUpdate();
				return 1;

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}	return -1;

		}
		
		
		//게시판 보기
				public ContReviewVO select(String cont_id) {
					String SQL = "SELECT * FROM TB_CONT_REVIEW WHERE CONT_ID = ?";
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
								contReviewVO.setUser_pid(rs.getString("user_pid"));
								
								return contReviewVO;
							}
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						DBManager.close(conn, pstmt);
					} return null;
					
				
				}
				
				//게시판 수정
				public int update(ContReviewVO contReviewVO) {
					String SQL = "UPDATE TB_CONT_REVIEW SET CONT_TITLE = ?, CONT_CONTENT = ? WHERE CONT_ID = ?";
					Connection conn = DBManager.getConnection();
					try {
						pstmt = conn.prepareStatement(SQL);
						pstmt.setString(1, contReviewVO.getCont_title());
						pstmt.setString(2, contReviewVO.getCont_content());
						pstmt.setString(3, contReviewVO.getCont_id());
						pstmt.executeUpdate();
						return 1;
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						DBManager.close(conn, pstmt);
					} return -1;
				}

		
		//게시판 삭제
		public int update_cont_review(String cont_id) {
			String SQL = "UPDATE TB_CONT_REVIEW SET DELETE_YN = 'Y' WHERE CONT_ID = ?";
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
		

		public ContReviewVO select_ajax() {
			String SQL = "SELECT * FROM TB_CONT_REVIEW ORDER BY CONT_ID DESC";
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);				
				rs = pstmt.executeQuery();				
					if(rs.next()) {
						ContReviewVO contReviewVO = new ContReviewVO();
						contReviewVO.setCont_id(rs.getString("cont_id"));
						contReviewVO.setCont_title(rs.getString("cont_title"));
						contReviewVO.setCont_content(rs.getString("cont_content"));
						contReviewVO.setUser_pid(rs.getString("user_pid"));
						return contReviewVO;
					}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			} return null;
		}
		
		public int checkId(String cont_id, String user_pid) {
			String SQL = "SELECT * FROM TB_CONT_REVIEW WHERE USER_PID = ? AND CONT_ID = ?";			
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user_pid);
				pstmt.setString(2, cont_id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					return 1;
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}	finally {
				DBManager.close(conn, pstmt, rs);
			}
			return -1;
		}
}

	

