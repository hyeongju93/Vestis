package com.vestis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vestis.repository.MarketDao;
import com.vestis.vo.ImgVo;
import com.vestis.vo.MarketVo;

@Service
public class MarketService {

	@Autowired MarketDao marketDao;
	
	public int insert(MarketVo marketVo) {
		return marketDao.insert(marketVo);
	}
	
	public List<ImgVo> get() {//보내줄 조건 없고 리스트로 받아
		return marketDao.getlist();
	}
	/*public List<MarkwtVo> getlist(int )*/
}
