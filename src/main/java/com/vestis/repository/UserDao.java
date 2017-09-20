package com.vestis.repository;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.vestis.vo.UserVo;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void join(@ModelAttribute UserVo userVo) {
		System.out.println("dao");
		System.out.println(userVo);
		sqlSession.insert("user.join",userVo);
		
	}
	
	public UserVo idcheck(String email) {
		System.out.println("dao");
		System.out.println(email);
		Map<String, Object> Map=new HashMap<String,Object>();
		Map.put("email", email);
		UserVo userVo=sqlSession.selectOne("user.idcheck",Map);
		System.out.println(userVo);
		return userVo;
	}
	public void snsjoin(@ModelAttribute UserVo userVo) {
		System.out.println("sns dao");
		System.out.println(userVo);
		sqlSession.insert("user.snsjoin",userVo);
		
	}
	
	public UserVo check(String email,String password) {
		Map<String, Object> userMap=new HashMap<String,Object>();
		userMap.put("email", email);
		userMap.put("password", password);
		UserVo userVo=sqlSession.selectOne("user.check",userMap);
		System.out.println(userVo);
		System.out.println("서비스 완료");
		return userVo;
	}
}
