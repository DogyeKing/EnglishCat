package com.cos.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.util.DBManager;

public class TestDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void test() {
		// DB������ ���� DBManager Ŭ���� �����.
		DBManager.getConnection();
	}

}


