package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FreeBoardComentDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	FreeBoardComentDTO dto = null;
	ResultSet rs = null;
	ArrayList<FreeBoardComentDTO> list = null;

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
		public int upload(FreeBoardComentDTO dto) {

			conn();

			try {

				String sql = "insert into f_brd_cmt values(?,c_num.nextval,?,?,sysdate)";
				psmt = conn.prepareStatement(sql);

				psmt.setInt(1, dto.getBnum());
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
		
		public ArrayList<FreeBoardComentDTO> FreeBoardComent(int num) {
			ArrayList<FreeBoardComentDTO> list = new ArrayList<FreeBoardComentDTO>();
			conn();
			
			try {
				String sql = "select * from f_brd_cmt where b_num = ? order by c_date ";
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, num);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					
					int b_num = rs.getInt(1);
					int c_num = rs.getInt(2);
					String username = rs.getString(3);
					String content = rs.getString(4);
					String date = rs.getString(5);
					
					dto = new FreeBoardComentDTO(b_num, c_num, username, content, date);
							
							
					list.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}
			return list;
		}
		
		public int delete(FreeBoardComentDTO dto) {

			conn();

			try {
				String sql = "delete from comm where c_num = ? ";
				psmt = conn.prepareStatement(sql);

				psmt.setInt(1, dto.getCnum());
				

				cnt = psmt.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return cnt;

		}
		
		public int update(FreeBoardComentDTO dto) {

			conn();

			try {
				String sql = "update comm set b_content = ? where c_num = ?";
				psmt = conn.prepareStatement(sql);

				psmt.setString(1, dto.getContent());
				psmt.setInt(2, dto.getCnum());
			
				

				cnt = psmt.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return cnt;
		}
	
}
