package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FreeBoardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	FreeBoardDTO dto = null;
	ResultSet rs = null;
	ArrayList<FreeBoardDTO> list = null;

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
	// �������� �߰� �ʿ�
	public int upload(FreeBoardDTO dto) {

		conn();

		try {

			String sql = "insert into f_brd values(������,?,?,?,sysdate,?,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, dto.getNum());
			psmt.setString(2, dto.getUsername());
			psmt.setString(3, dto.getTitle());
			psmt.setString(4, dto.getContent());
			psmt.setString(5, dto.getDate());
			psmt.setInt(6, dto.getView());
			psmt.setInt(7, dto.getLike());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<FreeBoardDTO> FreeBoard() {
		conn();
		
		try {
			String sql = "select * from f_brd order by b_date desc";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				int num = rs.getInt(1);
				String user = rs.getString(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				String date = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				dto = new FreeBoardDTO(num, user, title, content, date, view, like);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	public int delete(FreeBoardDTO dto) {

		conn();

		try {
			String sql = "delete from f_brd where b_num = ? ";
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
	
	public int update(FreeBoardDTO dto) {

		conn();

		try {
			String sql = "update f_brd set b_title = ?, b_content = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
		
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
