package com.vestis.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String list(Model model) {
		List<MarketVo> list=marketService.getlist2();
		System.out.println(list);
		model.addAttribute("list",list);
		return "/market/list";
	}
	
	@RequestMapping(value="/writeform",method=RequestMethod.GET)
	public String writeform() {
		return "market/writeform";
	}
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String write(@ModelAttribute MarketVo marketVo, Model model) {
		System.out.println(marketVo);
		System.out.println("write");
		marketService.insert(marketVo);
		System.out.println("도착");
		List<MarketVo> list=marketService.getlist2();
		System.out.println(list);
		model.addAttribute("list",list);
		return "market/list";
	}
	
	@ResponseBody
	@RequestMapping(value="/dbdb",method=RequestMethod.POST)
	public int dbdb(@RequestParam ("dbName") String dbname) {
		System.out.println("dbdb 들어옴");
		System.out.println(dbname);
		int result=marketService.dbdb(dbname);
		return result;	
	}
	@ResponseBody
	@RequestMapping(value="/get")
	public List<ImgVo> get() {
		List<ImgVo> list=marketService.get();
		System.out.println(list);
		return list;
	}
}
