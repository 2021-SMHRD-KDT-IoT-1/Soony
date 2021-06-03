package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FAQDAO { 

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	FAQDTO dto = null;
	ResultSet rs = null;
	ArrayList<FAQDTO> list = null;

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
	//FAQ ��� ������ �� �߰� �ʿ�
	public int upload(FAQDTO dto) {

		conn();

		try {

			String sql = "insert into faq values(f_num.nextval,?,?,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getImg());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	//FAQ ����
	public ArrayList<FAQDTO> showFAQ() {

		list = new ArrayList<FAQDTO>();

		conn();

		try {
			String sql = "select * from faq";
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int num = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String img = rs.getString(4);
				

				dto = new FAQDTO(num, title, content, img);
				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	//�ۼ� �� QnA����
		public FAQDTO showOne(int choice) {
			
			FAQDTO dto = null;
			conn();
			
			try {
				String sql = "select *from faq where f_num = ?";
				psmt = conn.prepareStatement(sql);
				
				psmt.setInt(1, choice);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					int num = rs.getInt(1);
					String title = rs.getString(2);
					String content = rs.getString(3);
					String img = rs.getString(4);
					
					
					dto = new FAQDTO(num, title, content, img);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}
			return dto;
		}
	
	public int delete(String num) {

		conn();

		try {
			String sql = "delete from faq where f_num=?";
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
	
	public int update(FAQDTO dto) {

		conn();

		try {
			String sql = "update faq set f_title = ?, f_content = ?, f_img = ? where f_num = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getImg());
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
