package com.model;

public class CongMember_infoDTO {

	private String id;
	private String pw;
	private String name; 
	private String tel; 
	private String email;
	private String nick;

	public CongMember_infoDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public CongMember_infoDTO(String id, String pw, String name, String tel, String email, String nick) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
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
