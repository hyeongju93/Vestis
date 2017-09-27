package com.vestis.vo;

public class CodiVo {
	private int no;
	private int userNo;				//로그인한 유저
	private int otherNo;			//코디 추천받은 유저
	private int codiPhotoNo;		//실제 입은 사진 
	private int codiNo;				//코디한 사진
	private int choose;
	private String codiDate; 		//코디한 날짜
	private int codiWeather;		//코디한 날짜 번호
	private String choiceDate;		//채택 날짜
	private int choiceWeather;		//채택한 날짜 번호
	
	public CodiVo() {}

	public CodiVo(int userNo, int otherNo, int codiPhotoNo, int codiNo, int choose, String codiDate, int codiWeather,
			String choiceDate, int choiceWeather) {
		this.userNo = userNo;
		this.otherNo = otherNo;
		this.codiPhotoNo = codiPhotoNo;
		this.codiNo = codiNo;
		this.choose = choose;
		this.codiDate = codiDate;
		this.codiWeather = codiWeather;
		this.choiceDate = choiceDate;
		this.choiceWeather = choiceWeather;
	}

	public CodiVo(int no, int userNo, int otherNo, int codiPhotoNo, int codiNo, int choose, String codiDate,
			int codiWeather, String choiceDate, int choiceWeather) {
		this.no = no;
		this.userNo = userNo;
		this.otherNo = otherNo;
		this.codiPhotoNo = codiPhotoNo;
		this.codiNo = codiNo;
		this.choose = choose;
		this.codiDate = codiDate;
		this.codiWeather = codiWeather;
		this.choiceDate = choiceDate;
		this.choiceWeather = choiceWeather;
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

	public int getCodiWeather() {
		return codiWeather;
	}

	public void setCodiWeather(int codiWeather) {
		this.codiWeather = codiWeather;
	}

	public String getChoiceDate() {
		return choiceDate;
	}

	public void setChoiceDate(String choiceDate) {
		this.choiceDate = choiceDate;
	}

	public int getChoiceWeather() {
		return choiceWeather;
	}

	public void setChoiceWeather(int choiceWeather) {
		this.choiceWeather = choiceWeather;
	}

	@Override
	public String toString() {
		return "CodiVo [no=" + no + ", userNo=" + userNo + ", otherNo=" + otherNo + ", codiPhotoNo=" + codiPhotoNo
				+ ", codiNo=" + codiNo + ", choose=" + choose + ", codiDate=" + codiDate + ", codiWeather="
				+ codiWeather + ", choiceDate=" + choiceDate + ", choiceWeather=" + choiceWeather + "]";
	}
	
}
