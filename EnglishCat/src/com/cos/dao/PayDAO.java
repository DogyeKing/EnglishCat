package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.dto.PayVO;
import com.cos.util.DBManager;



public class PayDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//결제 내역 입력
	public int insert(PayVO pay) {
		String SQL = "INSERT INTO TB_PAY VALUES(?,?,?,?,?,SYSDATE,?,?,?)";
		Connection conn = DBManager.getConnection();
		
		try { 
			pstmt= conn.prepareStatement(SQL);
			pstmt.setString(1, pay.getUser_pid());
			pstmt.setString(2, pay.getImp_uid());
			pstmt.setString(3, pay.getMerchant_uid());
			pstmt.setLong(4, pay.getPaid_amount());
			pstmt.setString(5,pay.getApply_num());
			pstmt.setString(6, pay.getMonth());
			pstmt.setString(7, pay.getTimes());
			pstmt.setString(8, pay.getMinutes());
			pstmt.executeUpdate();
			
			return 1;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}	return -1;

	}

	public PayVO select(String user_pid) {
		String SQL = "SELECT * FROM TB_PAY WHERE USER_PID = ? ORDER BY PAID_DATE DESC";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user_pid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				PayVO pay = new PayVO();
				pay.setImp_uid(rs.getString("imp_uid"));
				pay.setMerchant_uid(rs.getString("merchant_uid"));
				pay.setPaid_amount(rs.getLong("paid_amount"));
				pay.setApply_num(rs.getString("apply_num"));
				pay.setPaid_date(rs.getString("paid_date"));
				pay.setMonth(rs.getString("month"));
				pay.setTimes(rs.getString("times"));
				pay.setMinutes(rs.getString("minutes"));
			
				return pay;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
		
	}
	}

