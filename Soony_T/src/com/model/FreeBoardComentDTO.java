package com.model;

public class FreeBoardComentDTO {
	private int bnum;
	private int cnum;
	private String username;
	private String content;
	private String date;
	 
	
	
	public FreeBoardComentDTO(int cnum, String username, String content, String date) {
		super();
		this.cnum = cnum;
		this.username = username;
		this.content = content;
		this.date = date;
	}
	public FreeBoardComentDTO(int bnum, int cnum, String username, String content, String date) {
		super();
		this.bnum = bnum;
		this.cnum = cnum;
		this.username = username;
		this.content = content;
		this.date = date;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
