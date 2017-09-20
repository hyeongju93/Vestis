package com.vestis.controller;

import java.io.FileOutputStream;
import java.net.URLDecoder;
import java.util.Random;
import java.util.UUID;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vestis.repository.MyRoomService;

@Controller
@RequestMapping("/myroom")
public class MyRoomController {
	@Autowired
	private MyRoomService myRoomService;

	@RequestMapping(value = "/main")
	public String main() {
		return "/myroom/main";
	}

	@RequestMapping(value = "/codi")
	public String codi(Model model) {
		//String weather;
		String[] weather = {"sunny", "cloudy", "rainy", "snow"};
		//섹션 아이디를 가져와서 자신일 때 현재 날씨로 코디하도록 할 예정
		 /*try {
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
	      
	         String temp = (String) temperature.get("tc");
	         temp = temp.substring(0, 4);
	         System.out.println(temp);
	         weather = "온도:"+temp+"°C 날씨:"+sky.get("name");
	         
	         model.addAttribute("weather", weather);
	      } catch(Exception e) {
	      
	      }*/
		
		
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
		return "/myroom/codi";
	}

	@ResponseBody
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@RequestParam("data") String binaryData, @RequestParam("choice") String[] choice)
			throws Exception {
		binaryData = URLDecoder.decode(binaryData, "UTF-8");

		FileOutputStream stream = null;

		for (int i = 0; i < choice.length; i++) {
			System.out.println(choice[i]);
		}

		try {
			System.out.println(binaryData);
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
