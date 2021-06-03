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
	
	// QnA등록하기
	public int upload(QNADTO dto) {

		conn();

		try {

			String sql = "insert into qna values(q_num.nextval, ?, ?, ?, ?, sysdate)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getQ_username());
			psmt.setString(2, dto.getQ_title());
			psmt.setString(3, dto.getQ_content());
			psmt.setString(4, dto.getQ_img());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	//작성 된 QnA보기
	public QNADTO showOne(int choice) {
		
		QNADTO dto = null;
		conn();
		
		try {
			String sql = "select *from qna where q_num = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, choice);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int q_num = rs.getInt("q_num");
				String q_username = rs.getString("q_username");
				String q_title = rs.getString("q_title");
				String q_content = rs.getString("q_content");
				String q_img = rs.getString("q_img");
				String q_date = rs.getString("q_date");
				
				dto = new QNADTO(q_num, q_username, q_title, q_content, q_img, q_date);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
	}
	
	//QnA 목록보기
	public ArrayList<QNADTO> showQna() {
		
		ArrayList<QNADTO> list = new ArrayList<QNADTO>();
		
		conn();
		
		try {
			String sql = "select * from qna order by q_date desc";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				int q_num = rs.getInt(1);
				String q_username = rs.getString(2);
				String q_title = rs.getString(3);
				String q_content = rs.getString(4);
				String q_img = rs.getString(5);
				String date = rs.getString(6);
				
				dto = new QNADTO(q_num, q_username, q_title, q_content, q_img, date);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	public int delete(String num) {

		conn();

		try {
			String sql = "delete from qna where q_num = ? ";
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
	
	public int update(QNADTO dto) {

		conn();

		try {
			String sql = "update qna set q_title = ?, q_content = ?, q_img = ? where q_num = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getQ_title());
			psmt.setString(2, dto.getQ_content());
			psmt.setString(3, dto.getQ_img());
			psmt.setInt(4, dto.getQ_num());

			cnt = psmt.executeUpdate();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
