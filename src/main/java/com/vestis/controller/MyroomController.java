package com.vestis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myroom")
public class MyroomController {
	@RequestMapping("/main")
	public String test() {
		return "myroom/main";
	}
		
}
