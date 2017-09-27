package com.vestis.util;

public class WeatherVo {
	private String temperature;
	private String humidity;
	private String skyName;
	private String skyCode;
	public WeatherVo() {
		super();
	}
	public WeatherVo(String temperature, String humidity, String skyName, String skyCode) {
		super();
		this.temperature = temperature;
		this.humidity = humidity;
		this.skyName = skyName;
		this.skyCode = skyCode;
	}
	public String getTemperature() {
		return temperature;
	}
	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}
	public String getHumidity() {
		return humidity;
	}
	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}
	public String getSkyName() {
		return skyName;
	}
	public void setSkyName(String skyName) {
		this.skyName = skyName;
	}
	public String getSkyCode() {
		return skyCode;
	}
	public void setSkyCode(String skyCode) {
		this.skyCode = skyCode;
	}
	@Override
	public String toString() {
		return "WeatherVo [temperature=" + temperature + ", humidity=" + humidity + ", skyName=" + skyName
				+ ", skyCode=" + skyCode + "]";
	}
	
	
	

}
