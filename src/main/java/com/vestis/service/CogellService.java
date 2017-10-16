package com.vestis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vestis.repository.CenterDao;
import com.vestis.repository.CogellDao;
import com.vestis.vo.CenterVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.UserVo;

@Service
public class CogellService {
	
	@Autowired
	private CogellDao cogellDao;
	
	public List<UserVo> joinrank() {
		return cogellDao.joinrank();
	}
	
	public List<UserVo> clothrank() {
		return cogellDao.clothrank();
	}
	
	public List<CodibookVo> getList(String purpose, int num, int no) {
		return cogellDao.getList(purpose, num, no);
	}
	
	public List<CodibookVo> getList2(String purpose, int num, int no) {
		return cogellDao.getList2(purpose, num, no);
	}
	
	public List<CodibookVo> getList3(String purpose, int num, int no) {
		return cogellDao.getList3(purpose, num, no);
	}
	
	public List<CodibookVo> getRList(String purpose, int num, int no) {
		return cogellDao.getRList(purpose, num, no);
	}
	
	public List<CodibookVo> getList4(String purpose, int num, int no) {
		return cogellDao.getList4(purpose, num, no);
	}

}
