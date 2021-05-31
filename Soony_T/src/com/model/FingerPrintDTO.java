package com.model;

public class FingerPrintDTO {
	private String str_num;
	private String fng;
	private int alr;
	private String id;
	
	

	public FingerPrintDTO(String fng) {
		super();
		this.fng = fng;
	
	}

	public FingerPrintDTO(String str_num, String fng, int alr, String id) {
		super();
		this.str_num = str_num;
		this.fng = fng;
		this.alr = alr;
		this.id = id;
	}

	public String getStr_num() {
		return str_num;
	}

	public void setStr_num(String str_num) {
		this.str_num = str_num;
	}

	public String getFng() {
		return fng;
	}

	public void setFng(String fng) {
		this.fng = fng;
	}

	public int getAlr() {
		return alr;
	}

	public void setAlr(int alr) {
		this.alr = alr;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
