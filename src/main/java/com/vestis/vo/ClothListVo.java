package com.vestis.vo;

public class ClothListVo {
	private int no;
	private String dbName;

	public ClothListVo() {
		super();
	}

	public ClothListVo(int no, String dbName) {
		super();
		this.no = no;
		this.dbName = dbName;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getDbName() {
		return dbName;
	}

	public void setDbName(String dbName) {
		this.dbName = dbName;
	}

}
