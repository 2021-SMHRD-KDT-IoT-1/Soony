package com.model;

public class FreeBoardDTO {
	private int num;
	private String username;
	private String title;
	private String content;
	private String date;
	private int view;
	private int like;
  
	public FreeBoardDTO(int num, String username, String title, String content, String date, int view, int like) {
		super();
		this.num = num;
		this.username = username;
		this.title = title;
		this.content = content;
		this.date = date;
		this.view = view;
		this.like = like;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

}
