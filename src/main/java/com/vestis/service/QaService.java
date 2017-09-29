package com.vestis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vestis.repository.QaDao;
import com.vestis.vo.CommentVo;
import com.vestis.vo.PageVo;
import com.vestis.vo.QaVo;

@Service
public class QaService {
	@Autowired
	private QaDao qadao;

	
	public List<QaVo> getlist(int currNo,PageVo pageVo) {		
		int endNum=pageVo.getTotalCount()-pageVo.getPageNo()*(pageVo.getCurrNo()-1);
		int startNum=pageVo.getTotalCount()-pageVo.getPageNo()*pageVo.getCurrNo();		
		System.out.println("service 들어옴");
		return qadao.getlist(endNum,startNum);
	}
	
	public List<QaVo> getlist2(int currNo,PageVo pageVo) {		
		int endNum=pageVo.getTotalCount()-pageVo.getPageNo()*(pageVo.getCurrNo()-1);
		int startNum=pageVo.getTotalCount()-pageVo.getPageNo()*pageVo.getCurrNo();		
		System.out.println("service 들어옴");
		return qadao.getlist2(endNum,startNum);
	}
	

	/*이게 코맨트 서비스?*/
	public void commentlist(CommentVo commentVo){
	qadao.commetlist(commentVo);
	}
	
	
	public List<CommentVo> commentlist2(QaVo qaVo){

		return qadao.commentlist2(qaVo);
		}
	
	/*public List<QaVo> search(int currNo,String nicname) {
		PageVo pageVo=new PageVo();
		int totalCount=qadao.searchcount(nicname);
		pageVo.setting(currNo, totalCount);
		int endNum=pageVo.getTotalCount()-pageVo.getPageNo()*(pageVo.getCurrNo()-1);
		int startNum=pageVo.getTotalCount()-pageVo.getPageNo()*pageVo.getCurrNo();		
		return qadao.search(nicname,startNum,endNum);
	}*/
	
	
	public PageVo getPage0(int currNo) {
		int totalCount=qadao.gettotalcount0();
		PageVo pageVo0=new PageVo();
		pageVo0.setting(currNo, totalCount);
		return pageVo0;
	}
	
	public PageVo getPage1(int currNo) {
		int totalCount=qadao.gettotalcount1();
		PageVo pageVo1=new PageVo();
		pageVo1.setting(currNo, totalCount);
		return pageVo1;
	}
	
	public PageVo getPage2(int currNo) {
		int totalCount=qadao.gettotalcount2();
		PageVo pageVo2=new PageVo();
		pageVo2.setting(currNo, totalCount);
		return pageVo2;
	}
	
	public QaVo getqa(QaVo qavo,int flag) {
		QaVo vo=qadao.getqa(qavo);
		vo.setContent(vo.getContent().replace("\r\n", "<br/>"));
		return vo;
	}
	
	public QaVo getqainfo(QaVo qavo) {
		QaVo vo=qadao.getqa(qavo);
		return vo;
	}
	
	public int insert(QaVo qavo) {
		return qadao.insert(qavo);
	}
	
	public int update(QaVo qavo) {
		return qadao.update(qavo);
	}
	
	public int delete(int num) {
		return qadao.delete(num);
	}
	
	public int codelete(int num) {
		return qadao.codelete(num);
	}

	
	public List<QaVo> search(int currNo,String nicname) {
		PageVo pageVo=new PageVo();
		int totalCount=qadao.searchcount(nicname);
		pageVo.setting(currNo, totalCount);
		int endNum=pageVo.getTotalCount()-pageVo.getPageNo()*(pageVo.getCurrNo()-1);
		int startNum=pageVo.getTotalCount()-pageVo.getPageNo()*pageVo.getCurrNo();		
		return qadao.search(nicname,startNum,endNum);
	}
	
	public PageVo searchPage(int currNo,String nicname) {
		int totalCount=qadao.searchcount(nicname);
		PageVo pageVo=new PageVo();
		pageVo.setting(currNo, totalCount);
		return pageVo;
	}

}