package com.vestis.controller;

import java.io.FileOutputStream;
import java.net.URLDecoder;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.service.MyRoomService;
import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.UserVo;

@Controller
@RequestMapping("/myroom")
public class MyRoomController {
	@Autowired
	MyRoomService myRoomService;

	@RequestMapping(value = "/{userNo}")
	public String main(@PathVariable("userNo") int userNo, Model model) {
		model.addAttribute("userNo", userNo);
		return "/myroom/main";
	}

	@RequestMapping(value = "/codi/{userNo}")
	public String codi(@PathVariable("userNo") int userNo, Model model, HttpSession session) {
		// String weather;
		String[] weather = { "sunny", "cloudy", "rainy", "snow" };

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int authNo = authUser.getNo();

		System.out.println(authNo);

		// 자신의 페이지에서 코디할 경우 지금의 날씨를 알려줌
		if (userNo == authNo) {
			ClothWeatherVo clothWeatherVo = myRoomService.getWeather(authUser);
			
			String temp = clothWeatherVo.getTemp() + "°C";
			int indexNo = clothWeatherVo.getWeatherNo();
			System.out.println(temp);
			System.out.println(weather[indexNo]);
			model.addAttribute("temp", temp);
			model.addAttribute("weather", weather[indexNo]);
			model.addAttribute("weatherNo", indexNo);
			model.addAttribute("userNo", userNo);

		} else {
			// 다른 사람이 옷을 코디할때
			Random random = new Random();
			int temp = random.nextInt(61) - 20;
			int ran = random.nextInt(4);

			System.out.println(temp);
			if (ran == 3 && temp >= 0) {
				ran = 2;
			}
			System.out.println(weather[ran]);
			String temperature = temp + "°C";

			model.addAttribute("temp", temperature);
			model.addAttribute("weather", weather[ran]);
			model.addAttribute("weatherNo", ran);
			model.addAttribute("userNo", userNo);
		}
		return "/myroom/codi";
	}

	@ResponseBody
	@RequestMapping(value = "/save/{userNo}", method = RequestMethod.POST)
	public String save(@RequestParam("data") String binaryData, @RequestParam("choice") String[] choice,
			@RequestParam("weather") String weather, @RequestParam("temp") String temper,
			@PathVariable("userNo") int userNo, Model model, HttpSession session) throws Exception {
		System.out.println(weather + temper);
		System.out.println(userNo);

		temper = temper.substring(0, temper.length() - 2);
		int temp = Integer.parseInt(temper);
		System.out.println(temp);
		int weatherNo = Integer.parseInt(weather);
		System.out.println(weatherNo);
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int authNo = authUser.getNo();
		System.out.println(authNo);
		binaryData = URLDecoder.decode(binaryData, "UTF-8");

		FileOutputStream stream = null;

		for (int i = 0; i < choice.length; i++) {
			System.out.println(choice[i]);
		}

		try {
			// System.out.println(binaryData);
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

			myRoomService.SaveCodi(temp, weatherNo, userNo, authNo, fileName, file.length);
		} catch (Exception e) {
			System.out.println("파일이 정상적으로 넘어오지 않았습니다");
		} finally {
			stream.close();
		}

		model.addAttribute("userNo", userNo);
		return "success";
	}

	@RequestMapping(value = "/codibook/{userNo}")
	public String codibook(@PathVariable("userNo") int userNo, Model model) {
		//List<CodibookVo> list = myRoomService.getList();
		model.addAttribute("userNo", userNo);
		//model.addAttribute("list", list);
		return "/myroom/codibook";
	}
	
	@ResponseBody
	@RequestMapping(value ="/codibookList", method=RequestMethod.POST)
	public List<CodibookVo> getCodibookList(@RequestParam("purpose") String purpose, @RequestParam("num") int num) {
		System.out.println(purpose+num);
		
		List<CodibookVo> list = myRoomService.getList(purpose, num);
		return list;
	}

	@ResponseBody
	@RequestMapping(value = "/codibookSave", method = RequestMethod.POST)
	public String codibookSave(@RequestBody MultipartFile file) {
		System.out.println(file);
		System.out.println(file.getOriginalFilename());
		return "success";
	}

	@RequestMapping(value = "/clothes")
	public String clothes() {
		return "/myroom/clothes";
	}

	@RequestMapping(value = "/add")
	public String add() {
		return "/myroom/add";
	}

}
