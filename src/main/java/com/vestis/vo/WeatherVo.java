package com.vestis.vo;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class WeatherVo {
	private double lat;
	private double lon;
	private WeatherInfo weatherInfo;
	

	public WeatherVo() {
		super();
	}
	


	public WeatherVo(double lat, double lon, WeatherInfo weatherInfo) {
		super();
		this.lat = lat;
		this.lon = lon;
		this.weatherInfo = weatherInfo;
	}

	@Override
	public String toString() {
		return "WeatherVo [lat=" + lat + ", lon=" + lon + ", weatherInfo=" + weatherInfo + "]";
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



	public WeatherInfo getWeatherInfo() {
		return weatherInfo;
	}



	public void setWeatherInfo(WeatherInfo weatherInfo) {
		this.weatherInfo = weatherInfo;
	}



	public void setting(double lat, double lon) {
		WeatherInfo weatherInfo=new WeatherInfo();
		try {
			String address="http://apis.skplanetx.com/weather/current/hourly?version=1&lat="+lat+"&lon="+lon+"&appKey=41e1162f-7a4b-3add-8f1b-0a60e13c0a98";
			BufferedReader br;
			String protocol="GET";
			HttpURLConnection conn;
			URL url=new URL(address);
			conn=(HttpURLConnection)url.openConnection();
			conn.setRequestMethod(protocol);
			br=new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String json;
			json=br.readLine();
			System.out.println("============================================================================================================");
			JSONParser parser=new JSONParser();
			JSONObject objs=(JSONObject)parser.parse(json);
			JSONObject weathers=(JSONObject)objs.get("weather");		
			JSONArray hourlys=(JSONArray)weathers.get("hourly");
			JSONObject hours=(JSONObject)hourlys.get(0);
			JSONObject temperature=(JSONObject)hours.get("temperature");
			JSONObject grids=(JSONObject)hours.get("grid");
			System.out.println("현재온도: "+temperature.get("tc"));
			String temp=(String) temperature.get("tc");
			System.out.println("습도: "+hours.get("humidity"));
			String humidity=(String) hours.get("humidity");
			JSONObject sky=(JSONObject)hours.get("sky");
			System.out.println("하늘상태: "+sky.get("name"));
			String skyName=(String) sky.get("name");
			System.out.println("하늘상태코드: "+sky.get("code"));
			String skyCode=(String) sky.get("code");
			System.out.println(grids.get("city"));
			System.out.println(grids.get("county"));
			System.out.println(grids.get("village"));
			weatherInfo.setTemperature(temp);
			weatherInfo.setHumidity(humidity);
			weatherInfo.setSkyName(skyName);
			weatherInfo.setSkyCode(skyCode);
			this.lat=lat;
			this.lon=lon;
			this.weatherInfo=weatherInfo;
		System.out.println("============================================================================================================");
		
		
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	
		
	}

}
