package com.vestis.controller;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.codec.binary.Base64;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/myroom")
public class MyRoomController {

	@RequestMapping(value = "/main")
	public String main() {
		return "/myroom/main";
	}

	@RequestMapping(value = "/codi")
	public String codi() {
		return "/myroom/codi";
	}

	@ResponseBody
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(HttpServletRequest request) throws Exception {
		String binaryData = request.getParameter("data");
		FileOutputStream stream = null;
		System.out.println(binaryData);
		try {
			System.out.println("binary file " + binaryData);
			if (binaryData == null || binaryData == "") {
				throw new Exception();
			}
			binaryData = binaryData.replaceAll("data:image/png;base64,", "");
			byte[] file = Base64.decodeBase64(binaryData);
			System.out.println("file :::::::: " + file + " || " + file.length);
			String fileName = UUID.randomUUID().toString();
			stream = new FileOutputStream("D:\\javastudy\\file\\" + fileName + ".png");
			stream.write(file);
			stream.close();
			System.out.println(fileName + ".png 파일 작성 완료");
		} catch (Exception e) {
			System.out.println("파일이 정상적으로 넘어오지 않았습니다");
		} finally {
			stream.close();
		}
		return "success";
	}
	
	
	   
	   /*json-simple 사용*/
	   @RequestMapping(value="/weather")
	   public String test() {
	      try {
	      String address="http://apis.skplanetx.com/weather/current/hourly?version=1&city=서울&county=강남구&village=도곡동&appKey=41e1162f-7a4b-3add-8f1b-0a60e13c0a98";
	      BufferedReader br;
	      String protocol="GET";
	      HttpURLConnection conn;
	      URL url=new URL(address);
	      conn=(HttpURLConnection)url.openConnection();
	      conn.setRequestMethod(protocol);
	      br=new BufferedReader(new InputStreamReader(conn.getInputStream()));
	      String json;
	      json=br.readLine();
	      System.out.println(json);
	      ////////////////////////////////////////////////////
	      JSONParser parser=new JSONParser();
	      System.out.println("1"+parser);
	      JSONObject objs=(JSONObject)parser.parse(json);
	      System.out.println("2"+objs);
	      JSONObject weathers=(JSONObject)objs.get("weather");      
	      System.out.println("3"+weathers);
	      JSONArray hourlys=(JSONArray)weathers.get("hourly");
	      System.out.println("4"+hourlys);
	      JSONObject hours=(JSONObject)hourlys.get(0);
	      System.out.println("5"+hours);
	      JSONObject grids=(JSONObject)hours.get("grid");
	      System.out.println("6"+grids);
	      System.out.println(grids.get("city"));
	      System.out.println(grids.get("county"));
	      System.out.println(grids.get("village"));
	      System.out.println("=================================================json 값=======================================================");
	     
	      
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return "main/index";
	   }
}
