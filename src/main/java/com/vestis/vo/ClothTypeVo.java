package com.vestis.vo;

public class ClothTypeVo {
	private int no;
	private String name;
	
	public ClothTypeVo() {
		super();
	}

	public ClothTypeVo(int no, String name) {
		super();
		this.no = no;
		this.name = name;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "ClothTypeVo [no=" + no + ", name=" + name + "]";
	}
	
}
