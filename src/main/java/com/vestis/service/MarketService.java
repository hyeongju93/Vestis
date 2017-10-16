package com.vestis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vestis.repository.MarketDao;
import com.vestis.vo.CommentVo;
import com.vestis.vo.ImgVo;
import com.vestis.vo.MarketCommentVo;
import com.vestis.vo.MarketVo;
import com.vestis.vo.PageVo;
import com.vestis.vo.QaVo;

@Service
public class MarketService {

	@Autowired MarketDao marketDao;
	
	public int insert(MarketVo marketVo) {
		System.out.println("service");
		return marketDao.insert(marketVo);
	}
	
	public List<ImgVo> get() {//보내줄 조건 없고 리스트로 받아
		return marketDao.getlist();
		/*public List<MarkwtVo> getlist(int )*/
	}
	
	
	public int dbdb(String dbname) {
		System.out.println(dbname);
		System.out.println("service");
		return marketDao.dbdb(dbname);
	}
	
	public PageVo getPage2(int currNo) {
		int totalCount=marketDao.gettotalcount2();
		PageVo pageVo2=new PageVo();
		pageVo2.setting(currNo, totalCount);
		return pageVo2;
	}

	
	
	public List<MarketVo> getlist2(int currNo,PageVo pageVo) {		
		int endNum=pageVo.getTotalCount()-pageVo.getPageNo()*(pageVo.getCurrNo()-1);
		int startNum=pageVo.getTotalCount()-pageVo.getPageNo()*pageVo.getCurrNo();		
		System.out.println("service 들어옴");
		return marketDao.getlist2(endNum,startNum);
	}
	
	
	public List<MarketVo> search(int currNo,String nicname) {
		PageVo pageVo=new PageVo();
		int totalCount=marketDao.searchcount(nicname);
		pageVo.setting(currNo, totalCount);
		int endNum=pageVo.getTotalCount()-pageVo.getPageNo()*(pageVo.getCurrNo()-1);
		int startNum=pageVo.getTotalCount()-pageVo.getPageNo()*pageVo.getCurrNo();		
		return marketDao.search(nicname,startNum,endNum);
	}
	
	public PageVo searchPage(int currNo,String nicname) {
		int totalCount=marketDao.searchcount(nicname);
		PageVo pageVo=new PageVo();
		pageVo.setting(currNo, totalCount);
		return pageVo;
	}
	
	public int delete(int num) {
		return marketDao.delete(num);
	}
	
	public MarketVo getmarket(MarketVo marketVo) {
		MarketVo vo=marketDao.getmarket(marketVo);
		vo.setContent(vo.getContent().replace("\r\n", "<br/>"));
		return vo;
	}
	
	public MarketVo getmarketinfo(MarketVo marketVo) {
		MarketVo vo=marketDao.getmarket(marketVo);
		return vo;
	}
	
	public int update(MarketVo marketVo) {
		return marketDao.update(marketVo);
	}
	
	
	public void commentlist(MarketCommentVo marketcommentVo){
		marketDao.commetlist(marketcommentVo);
		}
		
		
	public List<MarketCommentVo> commentlist2(MarketVo marketVo){
		return marketDao.commentlist2(marketVo);
	}
	
	public int codelete(int num) {
		return marketDao.codelete(num);
	}
	
	public String image(int mo) {
		int fileNo=marketDao.image(mo);
		System.out.println(fileNo);
		String savename=marketDao.image2(fileNo);
		return savename;
	}
	
}
