package com.vestis.vo;

public class CenterVo {

	private int no;
	private String title;
	private String content;
	private String regDate;
	private int personNO;
	private int flag;
	
	public CenterVo() {
	
	}

	public CenterVo(int no, String title, String content, String regDate, int personNO, int flag) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.personNO = personNO;
		this.flag = flag;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public int getPersonNO() {
		return personNO;
	}

	public void setPersonNO(int personNO) {
		this.personNO = personNO;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	@Override
	public String toString() {
		return "CenterVo [no=" + no + ", title=" + title + ", content=" + content + ", regDate=" + regDate
				+ ", personNO=" + personNO + ", flag=" + flag + "]";
	}

	
	
	
	
	
	
	
}
	
	