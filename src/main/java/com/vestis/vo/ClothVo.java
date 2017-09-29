package com.vestis.vo;

public class ClothVo {
	private int no;
	private int personNo;
	private int typeNo;
	private int imgNo;
	private int count;

	public ClothVo() {
		super();
	}

	public ClothVo(int no, int personNo, int typeNo, int imgNo, int count) {
		super();
		this.no = no;
		this.personNo = personNo;
		this.typeNo = typeNo;
		this.imgNo = imgNo;
		this.count = count;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPersonNo() {
		return personNo;
	}

	public void setPersonNo(int personNo) {
		this.personNo = personNo;
	}

	public int getTypeNo() {
		return typeNo;
	}

	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "ClothVo [no=" + no + ", personNo=" + personNo + ", typeNo=" + typeNo + ", imgNo=" + imgNo + ", count="
				+ count + "]";
	}
	
}
