package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cos.dto.FreeLevelTestVO;
import com.cos.util.DBManager;

public class FreeLevelTestDAO {
	private PreparedStatement pstmt;	

	public int insert(FreeLevelTestVO FreeLevel) {
		
		String SQL = "INSERT INTO TB_FREE_LEVELTEST VALUES (?, ?, ?, ?, ?)";
		
		Connection conn = DBManager.getConnection();
		System.out.println("connection ok");
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, FreeLevel.getName());
			pstmt.setString(2, FreeLevel.getAge());
			pstmt.setString(3, FreeLevel.getPhone());
			pstmt.setString(4, FreeLevel.getEmail());
			pstmt.setString(5, FreeLevel.getContent());
			
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