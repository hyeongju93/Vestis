package com.vestis.vo;

public class FileVo {
	private String address;
	private String name;
	private String type;
	private long sizes;
	private String db_name;
	
	public FileVo() {
		super();
	}

	public FileVo(String address, String name, String type, long sizes, String db_name) {
		super();
		this.address = address;
		this.name = name;
		this.type = type;
		this.sizes = sizes;
		this.db_name = db_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public long getSizes() {
		return sizes;
	}

	public void setSizes(long sizes) {
		this.sizes = sizes;
	}

	public String getDb_name() {
		return db_name;
	}

	public void setDb_name(String db_name) {
		this.db_name = db_name;
	}

	@Override
	public String toString() {
		return "FileVo [address=" + address + ", name=" + name + ", type=" + type + ", sizes=" + sizes + ", db_name="
				+ db_name + "]";
	}
	
	

}
