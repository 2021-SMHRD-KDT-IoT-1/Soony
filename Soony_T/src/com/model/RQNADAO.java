package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RQNADAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	RQNADTO dto = null;
	ResultSet rs = null;
	ArrayList<RQNADTO> list = null;

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
	public int upload(RQNADTO dto) {

		conn();

		try {

			String sql = "insert into rqna values(?,rq_num.nextval,?,?,sysdate)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, dto.getQnum());
			psmt.setString(2, dto.getUsername());
			psmt.setString(3, dto.getContent());
			

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<RQNADTO> QNAComent(int num) {
		ArrayList<RQNADTO> list = new ArrayList<RQNADTO>();
		conn();
		
		try {
			String sql = "select * from rqna where q_num = ? order by rq_date ";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				
				int q_num = rs.getInt(1);
				int rq_num = rs.getInt(2);
				String username = rs.getString(3);
				String content = rs.getString(4);
				String date = rs.getString(5);
				
				dto = new RQNADTO(q_num, rq_num, username, content, date);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	public int delete(RQNADTO dto) {

		conn();

		try {
			String sql = "delete from rqna where rq_num = ? ";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, dto.getRqnum());
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
	
	public int update(RQNADTO dto) {

		conn();

		try {
			String sql = "update rqna set rq_title = ?, rq_content = ? where rq_num = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getUsername());
			psmt.setString(2, dto.getContent());
			psmt.setInt(3, dto.getRqnum());
		
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
