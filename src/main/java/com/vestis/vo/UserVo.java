package com.vestis.vo;

public class UserVo {
	private int no;
	private String email;
	private String password;
	private String name;
	private String nicname;
	private String phone;
	private String address;
	private String birth;
	private String birthyear;
	private String birthmonth;
	private String birthday;
	private String gender;
	private int point;
	private int profile_no;
	private String profileDBName;
	private double lat;
	private double lon;
	
	public UserVo() {
		super();
	}

	public UserVo(int no, String email, String password, String name, String nicname, String phone, String address,
			String birth, String birthyear, String birthmonth, String birthday, String gender, int point,
			int profile_no, double lat, double lon) {
		super();
		this.no = no;
		this.email = email;
		this.password = password;
		this.name = name;
		this.nicname = nicname;
		this.phone = phone;
		this.address = address;
		this.birth = birth;
		this.birthyear = birthyear;
		this.birthmonth = birthmonth;
		this.birthday = birthday;
		this.gender = gender;
		this.point = point;
		this.profile_no = profile_no;
		this.lat = lat;
		this.lon = lon;
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

	public String getNicname() {
		return nicname;
	}

	public void setNicname(String nicname) {
		this.nicname = nicname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getBirthyear() {
		return birthyear;
	}

	public void setBirthyear(String birthyear) {
		this.birthyear = birthyear;
	}

	public String getBirthmonth() {
		return birthmonth;
	}

	public void setBirthmonth(String birthmonth) {
		this.birthmonth = birthmonth;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getProfile_no() {
		return profile_no;
	}

	public void setProfile_no(int profile_no) {
		this.profile_no = profile_no;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLon() {
		return lon;
	}

	public void setLon(double lon) {
		this.lon = lon;
	}
	
	public String getProfileDBName() {
		return profileDBName;
	}

	public void setProfileDBName(String profileDBName) {
		this.profileDBName = profileDBName;
	}

	@Override
	public String toString() {
		return "UserVo [no=" + no + ", email=" + email + ", password=" + password + ", name=" + name + ", nicname="
				+ nicname + ", phone=" + phone + ", address=" + address + ", birth=" + birth + ", birthyear="
				+ birthyear + ", birthmonth=" + birthmonth + ", birthday=" + birthday + ", gender=" + gender
				+ ", point=" + point + ", profile_no=" + profile_no + ", profileDBName=" + profileDBName + ", lat="
				+ lat + ", lon=" + lon + "]";
	}

	

	

	
	
	

}