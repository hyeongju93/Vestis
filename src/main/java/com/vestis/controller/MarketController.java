package com.vestis.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vestis.service.MarketService;
import com.vestis.vo.ImgVo;
import com.vestis.vo.MarketVo;
import com.vestis.vo.QaVo;

@Controller
@RequestMapping("/market")
public class MarketController {

	@Autowired
	private MarketService marketService;
	
	@RequestMapping(value="/list")
	public String list() {
		return "/market/list";
	}
	
	@RequestMapping(value="/writeform",method=RequestMethod.GET)
	public String writeform() {
		return "market/writeform";
	}
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String write(@ModelAttribute MarketVo marketVo) {
		marketService.insert(marketVo);
		return "redirect:/market/list?currNo=1";
	}
	
	@ResponseBody
	@RequestMapping(value="/get")
	public List<ImgVo> get() {
		List<ImgVo> list=marketService.get();
		System.out.println(list);
		return list;
	}
}
