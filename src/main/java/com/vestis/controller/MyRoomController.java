package com.vestis.controller;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.codec.binary.Base64;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/myroom")
public class MyRoomController {
	@RequestMapping(value = "/{userNo}")
	public String main(@PathVariable("userNo") int userNo, Model model) {
		model.addAttribute("userNo", userNo);
		return "/myroom/main";
	}

	@RequestMapping(value = "/codi/{userNo}")
	public String codi(@PathVariable("userNo") int userNo, Model model, HttpSession session) {
		//String weather;
		String[] weather = {"sunny", "cloudy", "rainy", "snow"};
		
		
		int authNo = (session.getAttribute("no")==null)? -1 : (int)session.getAttribute("no");
		
		System.out.println(authNo);
		
		//자신의 페이지에서 코디할 경우 지금의 날씨를 알려줌
		if(userNo == authNo) {
		//섹션 아이디를 가져와서 자신일 때 현재 날씨로 코디하도록 할 예정
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
	         System.out.println("============================================================================================================");
	         JSONParser parser=new JSONParser();
	         JSONObject objs=(JSONObject)parser.parse(json);
	         JSONObject weathers=(JSONObject)objs.get("weather");      
	         JSONArray hourlys=(JSONArray)weathers.get("hourly");
	         JSONObject hours=(JSONObject)hourlys.get(0);
	         JSONObject temperature=(JSONObject)hours.get("temperature");
	         System.out.println("현재온도: "+temperature.get("tc"));
	         System.out.println("습도: "+hours.get("humidity"));
	         JSONObject sky=(JSONObject)hours.get("sky");
	         System.out.println("하늘상태: "+sky.get("name"));
	         System.out.println("하늘상태코드: "+sky.get("code"));
	         System.out.println("============================================================================================================");
	         String code = (String)sky.get("code");
	         code = code.substring(code.length()-2, code.length());
	         int weatherNo = Integer.parseInt(code);
	         int indexNo;
	         if(weatherNo==1 || weatherNo==2) {
	        	 indexNo = 0;
	         } else if(weatherNo==3 || weatherNo==7 || weatherNo==11) {
	        	 indexNo = 1;
	         } else if(weatherNo==5 || weatherNo==9 || weatherNo==13) {
	        	 indexNo = 3;
	         } else {
	        	 indexNo = 2;
	         }
	         String temp = (String) temperature.get("tc");
	         temp = temp.substring(0, 2) + "°C";
	         System.out.println(temp);
	         System.out.println(weather[indexNo]);
	         model.addAttribute("temp", temp);
	         model.addAttribute("weather", weather[indexNo]);
	      } catch(Exception e) {
	      
	      }
		
		} else {
			//다른 사람이 옷을 코디할때
			Random random = new Random();
			int temp = random.nextInt(61) - 20;
			int ran = random.nextInt(4);
			
			System.out.println(temp);
			if(ran==3 && temp>=0) {
				ran = 2;
			}
			System.out.println(weather[ran]);
			String temperature = temp+"°C";
	
			model.addAttribute("temp", temperature);
			model.addAttribute("weather", weather[ran]);
		}
		return "/myroom/codi";
	}

	@ResponseBody
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@RequestParam("data") String binaryData, @RequestParam("choice") String[] choice, @RequestParam("weather") String weather, @RequestParam("temp") String temp)
			throws Exception {
		System.out.println(weather + temp);
		
		
		binaryData = URLDecoder.decode(binaryData, "UTF-8");

		FileOutputStream stream = null;

		for (int i = 0; i < choice.length; i++) {
			System.out.println(choice[i]);
		}

		try {
			//System.out.println(binaryData);
			if (binaryData == null || binaryData == "") {
				throw new Exception();
			}
			binaryData = binaryData.replaceAll("data=data:image/png;base64,", "");
			byte[] file = Base64.decodeBase64(binaryData);

			System.out.println("file :::::::: " + file + " || " + file.length);
			String fileName = System.currentTimeMillis() + UUID.randomUUID().toString();
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

	@RequestMapping(value = "/codibook")
	public String codibook() {
		return "/myroom/codibook";
	}
	
	@RequestMapping(value="/clothes")
	public String clothes() {
		return "/myroom/clothes";
	}


	@RequestMapping(value="/add")
	public String add() {
		return "/myroom/add";
	}
	
}
