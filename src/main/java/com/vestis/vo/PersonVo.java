package com.vestis.vo;

public class PersonVo {

	private int no;
	private String email;
	private String password;
	private String name;
	private String phone;
	private String gender;
	private String birth;
	private String nicname;
	private int point;
	private String city;
	private String county;
	private String village;
	private int photoNo;
	
	public PersonVo() {
		
	}

	public PersonVo(int no, String email, String password, String name, String phone, String gender, String birth,
			String nicname, int point, String city, String county, String village, int photoNo) {
		super();
		this.no = no;
		this.email = email;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.gender = gender;
		this.birth = birth;
		this.nicname = nicname;
		this.point = point;
		this.city = city;
		this.county = county;
		this.village = village;
		this.photoNo = photoNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getNicname() {
		return nicname;
	}

	public void setNicname(String nicname) {
		this.nicname = nicname;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getVillage() {
		return village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public int getPhotoNo() {
		return photoNo;
	}

	public void setPhotoNo(int photoNo) {
		this.photoNo = photoNo;
	}

	@Override
	public String toString() {
		return "PersonVo [no=" + no + ", email=" + email + ", password=" + password + ", name=" + name + ", phone="
				+ phone + ", gender=" + gender + ", birth=" + birth + ", nicname=" + nicname + ", point=" + point
				+ ", city=" + city + ", county=" + county + ", village=" + village + ", photoNo=" + photoNo + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
