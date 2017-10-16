package com.vestis.vo;

public class MarketCommentVo {
	
	private int rn;
	private int no;
	private int personNo;
	private int marketNo;
	private String content;
	private String regDate;
	private String nicname;
	
	
	
	public MarketCommentVo() {
		super();
	}



	public MarketCommentVo(int rn, int no, int personNo, int marketNo, String content, String regDate, String nicname) {
		super();
		this.rn = rn;
		this.no = no;
		this.personNo = personNo;
		this.marketNo = marketNo;
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



	public int getMarketNo() {
		return marketNo;
	}



	public void setMarketNo(int marketNo) {
		this.marketNo = marketNo;
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
		return "MarketCommentVo [rn=" + rn + ", no=" + no + ", personNo=" + personNo + ", marketNo=" + marketNo
				+ ", content=" + content + ", regDate=" + regDate + ", nicname=" + nicname + "]";
	}
	
	
	
	

}
