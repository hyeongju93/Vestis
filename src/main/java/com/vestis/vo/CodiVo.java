package com.vestis.vo;

import org.springframework.stereotype.Repository;

@Repository
public class CodiVo {
	private int no;
	private int userNo;
	private int otherNo;
	private int codiPhotoNo;		//실제 입은 사진 
	private int codiNo;				//코디한 사진
	private int choose;
	private String codiDate; 		//코디한 날짜
	private int codi_weather;		//코디한 날짜 번호
	private String choice_date;		//채택 날짜
	private int choice_weather;		//채택한 날짜 번호
	
	public CodiVo() {}

	public CodiVo(int userNo, int otherNo, int codiPhotoNo, int codiNo, int choose, String codiDate, int codi_weather,
			String choice_date, int choice_weather) {
		this.userNo = userNo;
		this.otherNo = otherNo;
		this.codiPhotoNo = codiPhotoNo;
		this.codiNo = codiNo;
		this.choose = choose;
		this.codiDate = codiDate;
		this.codi_weather = codi_weather;
		this.choice_date = choice_date;
		this.choice_weather = choice_weather;
	}

	public CodiVo(int no, int userNo, int otherNo, int codiPhotoNo, int codiNo, int choose, String codiDate,
			int codi_weather, String choice_date, int choice_weather) {
		this.no = no;
		this.userNo = userNo;
		this.otherNo = otherNo;
		this.codiPhotoNo = codiPhotoNo;
		this.codiNo = codiNo;
		this.choose = choose;
		this.codiDate = codiDate;
		this.codi_weather = codi_weather;
		this.choice_date = choice_date;
		this.choice_weather = choice_weather;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getOtherNo() {
		return otherNo;
	}

	public void setOtherNo(int otherNo) {
		this.otherNo = otherNo;
	}

	public int getCodiPhotoNo() {
		return codiPhotoNo;
	}

	public void setCodiPhotoNo(int codiPhotoNo) {
		this.codiPhotoNo = codiPhotoNo;
	}

	public int getCodiNo() {
		return codiNo;
	}

	public void setCodiNo(int codiNo) {
		this.codiNo = codiNo;
	}

	public int getChoose() {
		return choose;
	}

	public void setChoose(int choose) {
		this.choose = choose;
	}

	public String getCodiDate() {
		return codiDate;
	}

	public void setCodiDate(String codiDate) {
		this.codiDate = codiDate;
	}

	public int getCodi_weather() {
		return codi_weather;
	}

	public void setCodi_weather(int codi_weather) {
		this.codi_weather = codi_weather;
	}

	public String getChoice_date() {
		return choice_date;
	}

	public void setChoice_date(String choice_date) {
		this.choice_date = choice_date;
	}

	public int getChoice_weather() {
		return choice_weather;
	}

	public void setChoice_weather(int choice_weather) {
		this.choice_weather = choice_weather;
	}

	@Override
	public String toString() {
		return "CodiVo [no=" + no + ", userNo=" + userNo + ", otherNo=" + otherNo + ", codiPhotoNo=" + codiPhotoNo
				+ ", codiNo=" + codiNo + ", choose=" + choose + ", codiDate=" + codiDate + ", codi_weather="
				+ codi_weather + ", choice_date=" + choice_date + ", choice_weather=" + choice_weather + "]";
	}
}
