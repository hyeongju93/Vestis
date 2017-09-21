package com.vestis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vestis.repository.CenterDao;
import com.vestis.vo.CenterVo;


@Service
public class CenterService {

	@Autowired
	private CenterDao centerDao;
	
	public List<CenterVo> getList(){
		return centerDao.selectAll();
	}
	
	public CenterVo getCenter(int no) {
		CenterVo centerVo = centerDao.selectCenter(no);
		return centerVo;
	}
	
	public CenterVo getCenterNoHit(int no) {
		CenterVo centerVo = centerDao.selectCenter(no);
		return centerVo;
	}

	
	public int write(CenterVo centerVo) {
		return centerDao.insert(centerVo);
	}
	
	public int remove(CenterVo centerVo) {
		return centerDao.delete(centerVo);
	}

	public int modify(CenterVo centerVo) {
		return centerDao.update(centerVo);
	}
 
	
}