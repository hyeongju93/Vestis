package com.vestis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cogell")
public class CogellController {
	@RequestMapping("/list")
	public String list() {
		return "/cogell/list";
	}
}
