package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cos.dto.ContReviewVO;
import com.cos.dto.PayVO;
import com.cos.util.DBManager;

public class PayDAO {
	private PreparedStatement pstmt;
	
	//결제 내역 입력
	public int insert(PayVO pay) {
		String SQL = "INSERT INTO TB_PAY (PAY_AMOUNT, USER_ID, USER_NAME, USER_EMAIL, USER_PHONE, USER_ADDR, USER_POSTCODE, PAY_ID, PAY_MERID, PAY_CARDNUM) VALUES (?,?,?,?,?,?,?,?,?,?)";
		Connection conn = DBManager.getConnection();
		
		try { 
			pstmt = conn.prepareStatement(SQL); 
			pstmt.setInt(1, pay.getPay_amount());
			pstmt.setString(2, pay.getUser_id());
			pstmt.setString(3, pay.getUser_name());
			pstmt.setString(4, pay.getUser_email());
			pstmt.setInt(5, pay.getUser_phone());
			pstmt.setString(6, pay.getUser_addr());
			pstmt.setInt(7, pay.getUser_postcode());
			pstmt.setString(8, pay.getPay_id());
			pstmt.setString(9, pay.getPay_merid());
			pstmt.setInt(10, pay.getCardnum());
			pstmt.executeUpdate();
		
			return 1;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}	return -1;

	}

	}

