package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.dto.RegistVO;
import com.cos.util.DBManager;

public class RegistDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insert(RegistVO regist) {
		System.out.println("insert start");
		String SQL = "INSERT INTO TB_USER_INFO VALUES (?,?,?,?,?,?,?,?,'NO',SYSDATE,SYSDATE,'NO','NO')";
		Connection conn = DBManager.getConnection();
		System.out.println("connection ok");
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, regist.getUser_id());
			pstmt.setString(2, regist.getUser_pass());
			pstmt.setString(3, regist.getUser_name());
			pstmt.setString(4, regist.getUser_phone());
			pstmt.setString(5, regist.getUser_mail());
			pstmt.setString(6, regist.getRoadFullAddr());
			pstmt.setString(7, regist.getUser_zipcode());
			pstmt.setString(8, regist.getSalt());
			
			pstmt.executeUpdate();
			
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return -1;
	}
	
	public String select_email(String user_id) {
		String SQL = "SELECT user_mail FROM tb_user_info WHERE user_id = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_id);
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
	
	public String select_salt(String user_id) {
		String SQL = "SELECT salt FROM tb_user_info WHERE user_id = ?";
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
	
	public int update_user_mail_yn(String user_id) {
		String SQL = "UPDATE tb_user_info SET user_mail_yn = ? WHERE user_id = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, "YES");
			pstmt.setString(2, user_id);
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return -1;
	}
	
	public int select_user_mail_yn(String user_id) {
		String SQL = "SELECT user_mail_yn FROM tb_user_info WHERE user_id = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String user_mail_yn = rs.getString("user_mail_yn");
				System.out.println("yn : " + user_mail_yn);
				if(user_mail_yn.equals("YES")) {
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
}
