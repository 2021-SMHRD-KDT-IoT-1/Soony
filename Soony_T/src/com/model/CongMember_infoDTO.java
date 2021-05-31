package com.model;

public class CongMember_infoDTO {

	private String id;
	private String pw;
	private String tel;
	private String addr;
	private String email;
	private String nick;

	public CongMember_infoDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public CongMember_infoDTO(String id, String pw, String tel, String addr, String email, String nick) {
		super();
		this.id = id;
		this.pw = pw;
		this.tel = tel;
		this.addr = addr;
		this.email = email;
		this.nick = nick;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

}
