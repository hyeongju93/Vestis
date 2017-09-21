package com.vestis.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.vestis.service.CenterService;
import com.vestis.vo.CenterVo;


@Controller
@RequestMapping("/center")
public class CenterController {
	@Autowired
	private CenterService centerService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) {
		List<CenterVo> list = centerService.getList();
		System.out.println(list);
		model.addAttribute("list", list);
		return "center/list";
	}
	
	
	@RequestMapping(value="/read/{no}", method=RequestMethod.GET)
	public String read(@PathVariable("no") int no, Model model) {
		CenterVo centerVo = centerService.getCenter(no);
		model.addAttribute("centerVo", centerVo);
		return "center/read";
	}

	/*@RequestMapping(value="/writeform", method=RequestMethod.GET)
	public String writeform() {
		return "center/writeform";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String write(@ModelAttribute CenterVo centerVo, HttpSession session) {
		PersonVo authPerson = (PersonVo)session.getAttribute("authPerson");
		centerVo.setPersonNO(authPerson.getNo());
		centerService.write(centerVo);		
		
		return "redirect:/center/list";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(@ModelAttribute CenterVo centerVo, HttpSession session) {
		PersonVo authPerson = (PersonVo)session.getAttribute("authPerson");
		centerVo.setPersonNO(authPerson.getNo());
		centerService.remove(centerVo);	
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/modifyform", method=RequestMethod.GET)
	public String modifyform(@RequestParam int no, Model model) {
		CenterVo centerVo = centerService.getCenterNoHit(no);
		model.addAttribute("centerVo", centerVo);
		return "center/modifyform";
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modifyform(@ModelAttribute CenterVo centerVo, HttpSession session, Model model) {
		PersonVo authPerson = (PersonVo)session.getAttribute("authPerson");
		int personNo = authPerson.getNo();
		centerVo.setPersonNO(personNo);
		centerService.modify(centerVo);
		System.out.println("aaa: " + centerVo.toString());
		return "redirect:/center/list";
	}*/



	
	
}