package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FingerPrintDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	FingerPrintDTO dto = null;
	ResultSet rs = null; 
	ArrayList<FingerPrintDTO> list = null;

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
	public int Enrollment(FingerPrintDTO dto) {

		conn();

		try {

			String sql = "insert into str_cr values(?,?,?,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getStr_num());
			psmt.setString(2, dto.getFng());
			psmt.setInt(3, dto.getAlr());
			psmt.setString(4, dto.getId());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public int delete(FingerPrintDTO dto) {

		conn();

		try {
			String sql = "delete from str_cr where fng = ? ";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getFng());
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
}
