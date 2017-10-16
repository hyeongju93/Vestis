package com.vestis.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vestis.service.MarketService;
import com.vestis.vo.CommentVo;
import com.vestis.vo.ImgVo;
import com.vestis.vo.MarketCommentVo;
import com.vestis.vo.MarketVo;
import com.vestis.vo.PageVo;
import com.vestis.vo.QaVo;
import com.vestis.vo.UserVo;

@Controller
@RequestMapping("/market")
public class MarketController {

	@Autowired
	private MarketService marketService;
	
	
	//합격
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model,int currNo) {
		
		
		
		PageVo pageVo2=marketService.getPage2(currNo);		
		List<MarketVo> list=marketService.getlist2(currNo,pageVo2);
		
		for(int i=0;i<list.size();i++) {
			list.get(i).setSavename(marketService.image(list.get(i).getCloth_no()));
		}
		model.addAttribute("list", list);
		model.addAttribute("page", pageVo2);
		model.addAttribute("kwd" );
		
		
		
		return "market/list";
	}
	
	//합격
	@RequestMapping(value="/writeform",method=RequestMethod.GET)
	public String writeform() {
		return "market/writeform";
	}
	
	//합격
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String write(@ModelAttribute MarketVo marketVo) {
		marketService.insert(marketVo);
		return "redirect:/market/list?currNo=1";
	}
	
	//합격
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(@RequestParam("no") int no ) {
		marketService.delete(no);
		return "redirect:/market/list?currNo=1";
	}
	
	//합격
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public String search(@RequestParam("kwd") String nicname,int currNo,Model model ) {		
		List<MarketVo> list=marketService.search(currNo,nicname);
		model.addAttribute("list", list);
		PageVo pageVo=marketService.searchPage(currNo,nicname);
		
		model.addAttribute("page", pageVo);
		model.addAttribute("kwd", nicname);	
		return "market/list";
	}
	
	//그림 저장
	@ResponseBody
	@RequestMapping(value="/dbdb",method=RequestMethod.POST)
	public int dbdb(@RequestParam ("dbName") String dbname) {
		System.out.println("dbdb 들어옴");
		System.out.println(dbname);
		int result=marketService.dbdb(dbname);
		return result;	
	}
	
	//
	@ResponseBody
	@RequestMapping(value="/get")
	public List<ImgVo> get() {
		List<ImgVo> list=marketService.get();
		System.out.println(list);
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="/image")
	public String image(@RequestParam("mo") int mo) {
		String savename=marketService.image(mo);
		System.out.println(savename);
		return savename;
	}
	
	@RequestMapping(value="/read",method=RequestMethod.GET)
	public String read(MarketVo marketVo,Model model) {
		MarketVo vo=marketService.getmarket(marketVo);
		System.out.println(vo);
		model.addAttribute("vo", vo);
		
		return "market/read";
	}
	
	//2
		@RequestMapping(value="/modifyform",method=RequestMethod.GET)
		public String modifyform(MarketVo marketVo,Model model) {
			MarketVo vo=marketService.getmarketinfo(marketVo);
			model.addAttribute("vo", vo);
			System.out.println(vo);
			return "market/modifyform";
		}
		//2
		@RequestMapping(value="/modify",method=RequestMethod.POST)
		public String modify(@ModelAttribute MarketVo marketVo,@RequestParam("currNo") int currNo,@RequestParam("kwd") String kwd) throws UnsupportedEncodingException {
			marketService.update(marketVo);
			kwd=URLEncoder.encode(kwd, "UTF-8");
			return "redirect:/market/read?no="+marketVo.getNo()+"&currNo="+currNo+"&kwd="+kwd;	//kwd
		}
		
		//3
		@ResponseBody
		@RequestMapping(value="/comment",method=RequestMethod.POST)
		public List<MarketCommentVo> comment(@RequestParam("text") String text,
							@RequestParam("no") int no,
								HttpSession session) {
			UserVo userVo=(UserVo) session.getAttribute("authUser");
			System.out.println(userVo);
			System.out.println("marketNo: "+no);
			MarketCommentVo marketcommentVo=new MarketCommentVo();
			marketcommentVo.setPersonNo(userVo.getNo());
			marketcommentVo.setMarketNo(no);
			marketcommentVo.setContent(text);
			
			
			System.out.println(text);
			
			marketService.commentlist(marketcommentVo);
			
			MarketVo marketVo=new MarketVo();
			marketVo.setNo(no);
			List<MarketCommentVo> cvo= marketService.commentlist2(marketVo);
			return cvo;
		}
		
		//3
		@ResponseBody
		@RequestMapping(value="/comment_view",method=RequestMethod.POST)
		public List<MarketCommentVo> comment_view(MarketVo marketVo,Model model) {
			System.out.println("comment_view");
			System.out.println(marketVo);
			List<MarketCommentVo> cvo= marketService.commentlist2(marketVo);
			
			System.out.println(cvo);
			return cvo;
		}
		
		//3
		@RequestMapping(value="/codelete",method=RequestMethod.GET)
		public String codelete(@RequestParam("commentNo") int no, @RequestParam("marketNo") int marketNo, String currNo)  {
			int num=marketService.codelete(no);
			MarketVo marketVo=new MarketVo();
			marketVo.setNo(no);
			System.out.println("codelete");
			System.out.println(no);
			
			return "redirect:/market/read?currNo="+currNo+"&no="+marketNo;
		
		}
		
		
}
