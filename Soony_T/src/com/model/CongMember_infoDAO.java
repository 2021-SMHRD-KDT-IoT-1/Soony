package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CongMember_infoDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	CongMember_infoDTO dto = null;
	ResultSet rs = null;
	ArrayList<CongMember_infoDTO> list = null;

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

	public int join(CongMember_infoDTO dto) {

		conn();

		try {

			String sql = "insert into mbr_info values(?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getTel());
			psmt.setString(4, dto.getAddr());
			psmt.setString(5, dto.getEmail());
			psmt.setString(6, dto.getNick());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public CongMember_infoDTO login(CongMember_infoDTO LogDto) {

		conn();

		try {
			String sql = "select * from mbr_info where id=? and pw=?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, LogDto.getEmail());
			psmt.setString(2, LogDto.getPw());

			rs = psmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String tel = rs.getString(3);
				String addr = rs.getString(4);
				String email = rs.getString(4);
				String nick = rs.getString(4);

				dto = new CongMember_infoDTO(id, pw, tel, addr, email, nick);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

	public int update(CongMember_infoDTO dto) {

		conn();

		try {
			String sql = "update mbr_info set pw = ?, tel = ?, addr = ?, email = ?, nick = ? where id = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getPw());
			psmt.setString(2, dto.getTel());
			psmt.setString(3, dto.getAddr());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getNick());
			psmt.setString(6, dto.getId());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public ArrayList<CongMember_infoDTO> select() {

		list = new ArrayList<CongMember_infoDTO>();

		conn();

		try {
			String sql = "select * from mbr_info";
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String tel = rs.getString(3);
				String addr = rs.getString(4);
				String email = rs.getString(5);
				String nick = rs.getString(6);

				dto = new CongMember_infoDTO(id, pw, tel, addr, email, nick);
				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public int delete(CongMember_infoDTO dto) {

		conn();

		try {
			String sql = "delete from mbr_info where id=? and pw=?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
}
