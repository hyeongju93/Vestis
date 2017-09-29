package com.vestis.vo;

public class MarketVo {
	
	private int no;
	private int person_no;
	private int cloth_no;
	private String title;
	private String content;
	private String regDate;

	public MarketVo() {
		super();
	}

	public MarketVo(int no, int person_no, int cloth_no, String title, String content, String regDate) {
		super();
		this.no = no;
		this.person_no = person_no;
		this.cloth_no = cloth_no;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPerson_no() {
		return person_no;
	}

	public void setPerson_no(int person_no) {
		this.person_no = person_no;
	}

	public int getCloth_no() {
		return cloth_no;
	}

	public void setCloth_no(int cloth_no) {
		this.cloth_no = cloth_no;
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

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "MarketVo [no=" + no + ", person_no=" + person_no + ", cloth_no=" + cloth_no + ", title=" + title
				+ ", content=" + content + ", regDate=" + regDate + "]";
	}
	
}
