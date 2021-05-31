package com.model;

public class QNADTO {
 
	private String num;
	private String username;
	private String password;
	private String title;
	private String content;
	private String date;
	public QNADTO(String num, String username, String password, String title, String content, String date) {
		super();
		this.num = num;
		this.username = username;
		this.password = password;
		this.title = title;
		this.content = content;
		this.date = date;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
