package com.model;

public class QNADTO {

	private int q_num;
	private String q_username;
	private String q_title;
	private String q_content;
	private String q_img;
	private String date;
	
	public QNADTO(int q_num, String q_username, String q_title, String q_content, String q_img,
			String date) {
		super();
		this.q_num = q_num;
		this.q_username = q_username;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_img = q_img;
		this.date = date;
	}
	
	public QNADTO(String q_username, String q_title, String q_content, String q_img) {
		super();
		this.q_username = q_username;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_img = q_img;
	}

	public int getQ_num() {
		return q_num;
	}

	public void setQ_num(int q_num) {
		this.q_num = q_num;
	}

	public String getQ_username() {
		return q_username;
	}

	public void setQ_username(String q_username) {
		this.q_username = q_username;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public String getQ_img() {
		return q_img;
	}

	public void setQ_img(String q_img) {
		this.q_img = q_img;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
	
}
