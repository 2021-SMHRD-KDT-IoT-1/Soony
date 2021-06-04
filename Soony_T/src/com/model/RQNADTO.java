package com.model;

public class RQNADTO {

	private int qnum;
	private int rqnum;
	private String username;
	private String content;
	private String date;
	
	public RQNADTO(int rqnum) {
		super();
		this.rqnum = rqnum;
	}

	public RQNADTO(int qnum, String username, String content) {
		super();
		this.qnum = qnum;
		this.username = username;
		this.content = content;
	}

	public RQNADTO(int rqnum, String title, String content, String date) {
		super();
		this.rqnum = rqnum;
		this.username = title;
		this.content = content;
		this.date = date;
	}
	
	public RQNADTO(int qnum, int rqnum, String title, String content, String date) {
		super();
		this.qnum = qnum;
		this.rqnum = rqnum;
		this.username = title;
		this.content = content;
		this.date = date;
	}

	public int getQnum() {
		return qnum;
	}

	public void setQnum(int qnum) {
		this.qnum = qnum;
	}

	public int getRqnum() {
		return rqnum;
	}

	public void setRqnum(int rqnum) {
		this.rqnum = rqnum;
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
