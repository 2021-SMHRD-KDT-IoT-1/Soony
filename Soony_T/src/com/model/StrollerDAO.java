package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class StrollerDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	StrollerDTO dto = null;
	ResultSet rs = null; 
	ArrayList<StrollerDTO> list = null;

	public void conn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Enrollment 등록한다는 뜻 ^^
	public int Enrollment(StrollerDTO dto) {

		conn();

		try {
			
			
			String sql = "select * from str_cr where str_num = ?";
					
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getStr_num());

			rs = psmt.executeQuery();
			
			if (!rs.next()) {
				
				sql = "insert into str_cr values(?,?)";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getStr_num());
				psmt.setString(2, dto.getId());
				
				cnt = psmt.executeUpdate();
			}


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	
}
