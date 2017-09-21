package com.vestis.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vestis.service.QaService;
import com.vestis.vo.PageVo;
import com.vestis.vo.QaVo;

@Controller
@RequestMapping("/qa")
public class QaController {
	@Autowired
	private QaService qaService;
	
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model,int currNo) {
		
		//고정 FAQ
		PageVo pageVo1=qaService.getPage1(1);		
		List<QaVo> fq=qaService.getlist(currNo,pageVo1);
		
		
		//유동 Q&A
		PageVo pageVo2=qaService.getPage2(currNo);		
		List<QaVo> list=qaService.getlist2(currNo,pageVo2);
		
		
		model.addAttribute("fq", fq);		
		model.addAttribute("list", list);
		model.addAttribute("page", pageVo2);
		model.addAttribute("kwd" );
		
		
		
		return "qa/list";
	}
	
	@RequestMapping(value="/read",method=RequestMethod.GET)
	public String read(QaVo qavo,Model model,@RequestParam("flag") int flag) {
		QaVo vo=qaService.getqa(qavo,flag);
		model.addAttribute("vo", vo);
		
		return "qa/read";
	}
	
	@RequestMapping(value="/writeform",method=RequestMethod.GET)
	public String writeform() {
		return "qa/writeform";
	}
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String write(@ModelAttribute QaVo qavo) {
		qaService.insert(qavo);
		return "redirect:/qa/list?currNo=1";
	}
	
	@RequestMapping(value="/modifyform",method=RequestMethod.GET)
	public String modifyform(QaVo qavo,Model model) {
		QaVo vo=qaService.getqainfo(qavo);
		model.addAttribute("vo", vo);
		return "qa/modifyform";
	}
	
	@RequestMapping(value="/modify",method=RequestMethod.POST)
	public String modify(@ModelAttribute QaVo qavo,@RequestParam("currNo") int currNo,@RequestParam("kwd") String kwd) throws UnsupportedEncodingException {
		qaService.update(qavo);
		kwd=URLEncoder.encode(kwd, "UTF-8");
		return "redirect:/qa/read?flag=0&no="+qavo.getNo()+"&currNo="+currNo+"&kwd="+kwd;	//kwd에 한글로 보낼시 받는 입장에서 ?? 로 받음
	}
	
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(@RequestParam("no") int no ) {
		qaService.delete(no);
		return "redirect:/qa/list?currNo=1";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public String search(@RequestParam("kwd") String nicname,int currNo,Model model ) {		
		List<QaVo> list=qaService.search(currNo,nicname);
		model.addAttribute("list", list);
		PageVo pageVo=qaService.searchPage(currNo,nicname);
		
		model.addAttribute("page", pageVo);
		model.addAttribute("kwd", nicname);	
		return "qa/list";
	}
}