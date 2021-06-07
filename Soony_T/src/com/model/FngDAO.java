package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FngDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	FngDTO dto = null;
	ResultSet rs = null; 
	ArrayList<FngDTO> list = null;

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
	//Enrollment 지문을 등록함
	public int Enrollment(FngDTO dto) {
		conn();
		String sql = "insert into fng values(?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getFng_num());
			psmt.setString(2, dto.getFng_name());
			cnt=psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int delete(String num) {
		conn();
		try {
			String sql = "delete from fng where fng_num = ? ";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<FngDTO> showFng() {
		conn();
		ArrayList<FngDTO> li = new ArrayList<FngDTO>();
		String sql = "select * from fng order by fng_num";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				int fng_num = rs.getInt("fng_num");
				String fng_name=rs.getString("fng_name");
				
				FngDTO dto = new FngDTO(fng_num, fng_name);
				li.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return li;
	}
	
}
