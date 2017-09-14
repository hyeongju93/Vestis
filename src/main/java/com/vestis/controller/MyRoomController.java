package com.vestis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myroom")
public class MyRoomController {
	
	@RequestMapping(value="/main")
	public String main() {
		return "/myroom/main";
	}
	
	@RequestMapping(value="/codi")
	public String codi() {
		return "/myroom/codi";
	}
	
	@RequestMapping(value="/codibook")
	public String codibook() {
		return "/myroom/codibook";
	}
}
