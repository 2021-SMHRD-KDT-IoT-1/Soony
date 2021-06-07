package com.model;

public class AlrDTO {

	private int alr_num;
	private String sys_date;
	
	public AlrDTO(int alr_num, String sys_date) {
		super();
		this.alr_num = alr_num;
		this.sys_date = sys_date;
	}


	public int getAlr_num() {
		return alr_num;
	}


	public void setAlr_num(int alr_num) {
		this.alr_num = alr_num;
	}


	public String getSys_date() {
		return sys_date;
	}


	public void setSys_date(String sys_date) {
		this.sys_date = sys_date;
	}
	
	
}
