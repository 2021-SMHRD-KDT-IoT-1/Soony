package com.model;

public class RQNADTO {
 
	private int qnum;
	private int rqnum;
	private int title;
	private int content;
	private int date;

	public RQNADTO(int qnum, int rqnum, int title, int content, int date) {
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

	public int getTitle() {
		return title;
	}

	public void setTitle(int title) {
		this.title = title;
	}

	public int getContent() {
		return content;
	}

	public void setContent(int content) {
		this.content = content;
	}

	public int getDate() {
		return date;
	}

	public void setDate(int date) {
		this.date = date;
	}

}
