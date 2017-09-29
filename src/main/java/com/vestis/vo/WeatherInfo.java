package com.vestis.vo;

public class WeatherInfo {
	private String temperature;
	private String humidity;
	private String skyName;
	private String skyCode;
	public WeatherInfo() {
		super();
	}
	public WeatherInfo(String temperature, String humidity, String skyName, String skyCode) {
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
		return "WeatherInfo [temperature=" + temperature + ", humidity=" + humidity + ", skyName=" + skyName
				+ ", skyCode=" + skyCode + "]";
	}
	
	
	
	

}
