package com.vestis.vo;

public class CommentVo {
	
	private int rn;
	private int no;
	private int personNo;
	private int centerNo;
	private String content;
	private String regDate;
	private String nicname;
	public CommentVo() {
		super();
	}
	public CommentVo(int rn, int no, int personNo, int centerNo, String content, String regDate, String nicname) {
		super();
		this.rn = rn;
		this.no = no;
		this.personNo = personNo;
		this.centerNo = centerNo;
		this.content = content;
		this.regDate = regDate;
		this.nicname = nicname;
	}
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
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
	public int getCenterNo() {
		return centerNo;
	}
	public void setCenterNo(int centerNo) {
		this.centerNo = centerNo;
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
	public String getNicname() {
		return nicname;
	}
	public void setNicname(String nicname) {
		this.nicname = nicname;
	}
	@Override
	public String toString() {
		return "CommentVo [rn=" + rn + ", no=" + no + ", personNo=" + personNo + ", centerNo=" + centerNo + ", content="
				+ content + ", regDate=" + regDate + ", nicname=" + nicname + "]";
	}
	
}