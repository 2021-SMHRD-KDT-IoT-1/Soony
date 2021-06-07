package com.model;

public class FngDTO {
	private int fng_num;
	private String fng_name;
	public FngDTO(int fng_num, String fng_name) {
		super();
		this.fng_num = fng_num;
		this.fng_name = fng_name;
	}
	public int getFng_num() {
		return fng_num;
	}
	public void setFng_num(int fng_num) {
		this.fng_num = fng_num;
	}
	public String getFng_name() {
		return fng_name;
	}
	public void setFng_name(String fng_name) {
		this.fng_name = fng_name;
	}
	
}
