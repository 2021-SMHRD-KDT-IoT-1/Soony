package com.model;

public class RQNADTO {

	private int qnum;
	private int rqnum;
	private String title;
	private String content;
	private String date;
	
	public RQNADTO(int rqnum, String title, String content, String date) {
		super();
		this.rqnum = rqnum;
		this.title = title;
		this.content = content;
		this.date = date;
	}
	
	public RQNADTO(int qnum, int rqnum, String title, String content, String date) {
		super();
		this.qnum = qnum;
		this.rqnum = rqnum;
		this.title = title;
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
