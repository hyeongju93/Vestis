package com.vestis.vo;

public class QaVo {
	
	private int rn;
	private int no;
	private String title;
	private String content;
	private String regDate;
	private int personNO;
	private String nicname;
	private int flag;
	
	
	public QaVo() {
		
	}


	public QaVo(int rn, int no, String title, String content, String regDate, int personNO, String nicname, int flag) {
		super();
		this.rn = rn;
		this.no = no;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.personNO = personNO;
		this.nicname = nicname;
		this.flag = flag;
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


	public String getNicname() {
		return nicname;
	}


	public void setNicname(String nicname) {
		this.nicname = nicname;
	}


	public int getFlag() {
		return flag;
	}


	public void setFlag(int flag) {
		this.flag = flag;
	}


	@Override
	public String toString() {
		return "QaVo [rn=" + rn + ", no=" + no + ", title=" + title + ", content=" + content + ", regDate=" + regDate
				+ ", personNO=" + personNO + ", nicname=" + nicname + ", flag=" + flag + "]";
	}

	
	
	
	
}