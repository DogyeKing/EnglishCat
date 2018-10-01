package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.dto.RegistVO;
import com.cos.util.DBManager;

public class RegistDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public String selectUserNextPid() {
		String SQL = "SELECT FN_NEXT_PID('USERPID') USER_PID FROM DUAL";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			if (rs.next()){
				return rs.getString("user_pid");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	// 회원가입
	public int insertUserInfo(RegistVO regist) {
		System.out.println("insert start");
		String SQL = "INSERT INTO TB_USER_INFO VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'NO', 'USER', SYSDATE, NULL, NULL, NULL)";
		
		/*String SQL = "INSERT INTO TB_USER_INFO VALUES (?,?,?,?,?,?,?,?,'NO',SYSDATE,SYSDATE,'NO','NO')";*/
		Connection conn = DBManager.getConnection();
		System.out.println("connection ok");
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, regist.getUser_pid());
			pstmt.setString(2, regist.getUser_id());
			pstmt.setString(3, regist.getUser_pass());
			pstmt.setString(4, regist.getUser_name());
			pstmt.setString(5, regist.getUser_phone());
			pstmt.setString(6, regist.getUser_mail());
			pstmt.setString(7, regist.getRoadFullAddr());
			pstmt.setString(8, regist.getUser_zipcode());
			pstmt.setString(9, regist.getSalt());
			
			pstmt.executeUpdate();
			
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return -1;
	}
	
	// 네이버 회원가입
	public int naverRegist(RegistVO regist) {
		System.out.println("naverRegist start");
		String SQL = "INSERT INTO TB_USER_INFO VALUES (?, ?, NULL, ?, NULL, ?, NULL, NULL, NULL, 'YES', 'NAVER_USER', SYSDATE, NULL, NULL, NULL)";
		
		/*String SQL = "INSERT INTO TB_USER_INFO VALUES (?,?,?,?,?,?,?,?,'NO',SYSDATE,SYSDATE,'NO','NO')";*/
		Connection conn = DBManager.getConnection();
		System.out.println("connection ok");
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, regist.getUser_pid());
			pstmt.setString(2, regist.getUser_id());
			pstmt.setString(3, regist.getUser_name());
			pstmt.setString(4, regist.getUser_mail());
			
			pstmt.executeUpdate();
			
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return -1;
	}
	
	// pid와 구글이메일 인증여부 조회
	// DELETE_YN = 휴먼계정여부 
	public RegistVO select_id(RegistVO regist) {				
		String SQL = "SELECT user_pid, user_mail_avail_yn FROM TB_USER_INFO WHERE DELETE_YN IS NULL AND user_id = ? AND user_pass= ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, regist.getUser_id());
			pstmt.setString(2, regist.getUser_pass());
			rs = pstmt.executeQuery();

			if (rs.next()){
				regist.setUser_pid(rs.getString("user_pid"));
				regist.setUser_mail_avail_yn(rs.getString("user_mail_avail_yn"));						
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return regist;
	}
	
			
	// 이메일 조회		
	public String select_user_mail(String user_pid) {
		String SQL = "SELECT user_mail FROM tb_user_info WHERE user_pid = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_pid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String user_mail = rs.getString("user_mail");
				return user_mail;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	// user_id를 조회해서 salt값 뽑아오기
	public String select_salt(String user_id) {
		String SQL = "SELECT salt FROM tb_user_info WHERE DELETE_YN IS NULL AND user_id = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String salt = rs.getString("salt");
				return salt;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	// user_mail_avil_yn의 값이 yes이면 구글 이메일 인증된 회원으로 update
	public int update_user_mail_avail_yn(String user_pid) {
		String SQL = "UPDATE tb_user_info SET user_mail_avail_yn = ? WHERE user_pid = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, "YES");
			pstmt.setString(2, user_pid);
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return -1;
	}
	
	// 구글 이메일 인증 여부확인
	// user_pid 조회해서 user_mail_avail_yn의 값이 yes냐 no냐
	public int select_user_mail_avail_yn(String user_pid) {
		String SQL = "SELECT user_mail_avail_yn FROM tb_user_info WHERE user_pid = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_pid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String user_mail_avail_yn = rs.getString("user_mail_avail_yn");
				if(user_mail_avail_yn.equals("YES")) {
					return 1;
				}else {
					return 2;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return -1;
	}
	
	// user_pid 조회하여 전체 컬럼 값
	public RegistVO select(String user_pid) {
		String SQL = "SELECT * FROM tb_user_info WHERE user_pid = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_pid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				RegistVO regist = new RegistVO();
				regist.setUser_pid(rs.getString("user_pid"));
				regist.setUser_id(rs.getString("user_id"));
				regist.setUser_name(rs.getString("user_name"));
				regist.setUser_phone(rs.getString("user_phone"));
				regist.setRoadFullAddr(rs.getString("roadFullAddr"));
				regist.setUser_mail(rs.getString("user_mail"));				
				regist.setUser_mail_avail_yn(rs.getString("user_mail_avail_yn"));				

				return regist;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 인증, 미인증 회원 구별
	public int check_id(String user_id) {
		//이건 이전 쿼리문
		//String SQL = "SELECT user_id FROM TB_USER_INFO WHERE (DELETE_YN IS NOT NULL AND UPDATE_DT >= (SYSDATE-30)) AND user_id = ?";
		
		//수정한 쿼리문(되는거)
		String SQL = "SELECT USER_MAIL_AVAIL_YN FROM TB_USER_INFO WHERE user_id = ?";
		
		//한번 해보는 쿼리문
		/*String SQL = "SELECT USER_MAIL_AVAIL_YN FROM TB_USER_INFO WHERE (DELETE_YN IS NOT NULL AND UPDATE_DT >= (SYSDATE-30)) AND user_id = ?";*/
		
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_id);			
			rs = pstmt.executeQuery();			

			if(rs.next()) {
			return 1;
			}else {
				return 2;
			}
			
			
/*			if(rs.next()) {	
				if(rs.getString("USER_MAIL_AVAIL_YN").equals("YES")) {
					return 1;
				}else if(rs.getString("USER_MAIL_AVAIL_YN").equals("NO")) {
					return 2;
				}
			}*/

			//이건 이전 if문
			/*if (rs.next()){				
					return 1; //id 존재
				}else{
					return 2; //없음
				}	*/		
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return -1;
	}
	
	// 회원정보 수정
	public int update(RegistVO regist) {
		String SQL = "UPDATE TB_USER_INFO SET user_pass = ?, roadFullAddr = ?, user_mail = ? WHERE user_pid = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, regist.getUser_pass());
			pstmt.setString(2, regist.getRoadFullAddr());
			pstmt.setString(3, regist.getUser_mail());
			pstmt.setString(4, regist.getUser_pid());
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
		//session이 가진 user_id로 user_pid 뽑아오기
		/*public String get_pid(String user_id) {
			String SQL = "SELECT user_pid FROM TB_USER_INFO WHERE user_id = ?";
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user_id);			
				rs = pstmt.executeQuery();
	
				if (rs.next()){				
						return rs.getString("user_pid"); //id 존재
					}else{
						return "null"; //없음
					}			
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
			return "error";
		}*/
	
	
		//session이 가진 user_pid로 user_id 뽑아오기	 ???? (뭔지 모르겠당)
		public String get_id(String user_pid) {
			String SQL = "SELECT user_id FROM TB_USER_INFO WHERE user_pid = ?";
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user_pid);			
				rs = pstmt.executeQuery();

				if (rs.next()){				
					return rs.getString("user_id"); //id 존재
				}			
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
			return null;
		}
		
		// user_pid를 조회해서 결제할때 회원정보 뽑아오기
		public RegistVO selectPayment(String user_pid) {
			String SQL = "SELECT * FROM tb_user_info WHERE user_pid = ?";
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user_pid);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
				
					RegistVO regist = new RegistVO();
					regist.setUser_pid(rs.getString("user_pid"));
					regist.setUser_id(rs.getString("user_id"));
					regist.setUser_name(rs.getString("user_name"));
					regist.setUser_phone(rs.getString("user_phone"));
					regist.setUser_mail(rs.getString("user_mail"));				
									
					return regist;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		
		//auth_code로 user, naver_user 구분 
		public String login_confirm(String user_pid) {
			String SQL = "SELECT AUTH_CODE FROM tb_user_info WHERE user_pid = ?";
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user_pid);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {					
					return rs.getString("AUTH_CODE");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		
		// user_id로 user_pid 뽑아오기 
		public String select_pid(String user_id) {
			String SQL = "SELECT user_pid FROM tb_user_info WHERE user_id = ?";
			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user_id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {					
					return rs.getString("user_pid");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		} 
}
