package com.cos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.cos.util.DBManager;

public class PayDAO {
	private PreparedStatement pstmt;
	
	public String select() {
	String SQL = "select * from tb_pay";
	Connection conn = DBManager.getConnection();
	return SQL;

	}
}
