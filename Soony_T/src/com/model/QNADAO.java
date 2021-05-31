package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class QNADAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	QNADTO dto = null;
	ResultSet rs = null;
	ArrayList<QNADTO> list = null;

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
	// 시퀀스명 추가 필요
	public int upload(QNADTO dto) {

		conn();

		try {

			String sql = "insert into qna values(시퀀스,?,?,?,?,sysdate)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, dto.getNum());
			psmt.setString(2, dto.getUsername());
			psmt.setString(3, dto.getPassword());
			psmt.setString(4, dto.getTitle());
			psmt.setString(5, dto.getContent());
			psmt.setString(6, dto.getDate());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<QNADTO> select() {
		conn();
		
		try {
			String sql = "select * from qna order by q_date desc";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				int num = rs.getInt(1);
				String user = rs.getString(2);
				String pw = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				String date = rs.getString(6);
				
				dto = new QNADTO(num, user, pw, title, content, date);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	public int delete(QNADTO dto) {

		conn();

		try {
			String sql = "delete from qna where q_num = ? ";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, dto.getNum());
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
	
	public int update(QNADTO dto) {

		conn();

		try {
			String sql = "update qna set q_title = ?, q_content = ? where = q_password = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getPassword());
		
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
