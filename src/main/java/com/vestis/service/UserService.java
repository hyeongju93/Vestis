package com.vestis.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.vestis.repository.UserDao;
import com.vestis.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public void join(@ModelAttribute UserVo userVo) {
		System.out.println("service");
		System.out.println(userVo);
		userVo.setBirth(userVo.getBirthyear()+"-"+userVo.getBirthmonth()+"-"+userVo.getBirthday());
		userDao.join(userVo);
	}
	
	public void snsjoin(@ModelAttribute UserVo userVo) {
		System.out.println("service");
		System.out.println(userVo);
		userDao.snsjoin(userVo);
	}
	
	public UserVo check(String email,String password) {
		return userDao.check(email,password);
	}
	
	public int idcheck(String email) {
		UserVo userVo=userDao.idcheck(email);
		System.out.println(userVo);
		if(userVo==null) {
			return 1;
		}
		return 2;
	}

}
