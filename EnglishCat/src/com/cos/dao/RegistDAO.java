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
		String SQL = "INSERT INTO TB_USER_INFO VALUES (?,?,?,?,?,?,'NO',SYSDATE,NULL,'NO')";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, regist.getUser_id());
			pstmt.setString(2, regist.getUser_pass());
			pstmt.setString(3, regist.getUser_name());
			pstmt.setString(4, regist.getUser_phone());
			pstmt.setString(5, regist.getUser_mail());
			pstmt.setString(6, regist.getUser_zipcode());
			pstmt.executeUpdate();
			
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return -1;
	}
}
