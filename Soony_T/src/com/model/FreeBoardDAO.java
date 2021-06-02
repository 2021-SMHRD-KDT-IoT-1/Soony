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
	// 자유게시판 게시글 등록
	public int upload(FreeBoardDTO dto) {

		conn();

		try {

			String sql = "insert into f_brd values(b_num.nextval,?,?,?,sysdate,0,0,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getUsername());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getContent());
			psmt.setString(4, dto.getPhoto());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	// FreeBoard보기
	public ArrayList<FreeBoardDTO> FreeBoard() {
		
		ArrayList<FreeBoardDTO> list = new ArrayList<FreeBoardDTO>();
		conn();
		
		try {
			String sql = "select * from f_brd order by b_date desc ";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				int num = rs.getInt(1);
				String username = rs.getString(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				String date = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				String photo = rs.getString(8);
				
				dto = new FreeBoardDTO(num, username, title, content, date, view, like, photo);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
public FreeBoardDTO showOne(int choice) {
		
	FreeBoardDTO dto = null;
		conn();
		
		try {
			String sql = "select *from f_brd where b_num = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, choice);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt(1);
				String username = rs.getString(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				String date = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				String photo = rs.getString(8);
				
				dto = new FreeBoardDTO(num, username, title, content, date, view, like, photo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
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
			String sql = "update f_brd set b_title = ?, b_content = ?, b_photo = ? where b_num = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getPhoto());
			psmt.setInt(4, dto.getNum());
		
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
