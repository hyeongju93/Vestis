package com.vestis.repository;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vestis.vo.FileVo;
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
	
	public int restore(FileVo fileVo,int personNo) {
		System.out.println("dao 들어옴");
		System.out.println(fileVo);
		sqlSession.insert("user.restore",fileVo);
		String saveName=fileVo.getDb_name();
		int num=sqlSession.selectOne("user.getimgNo",saveName);
		System.out.println("여기는 restore");
		Map<String, Object> userMap=new HashMap<String,Object>();
		userMap.put("personNo", personNo);
		userMap.put("num", num);
		sqlSession.update("user.updateimg",userMap);
		return num;
	}
	
	public UserVo getuser(int num) {
		System.out.println("dao 들어옴");
		return sqlSession.selectOne("user.getuser",num);
	}
	
	public UserVo getUserInfo(int no) {
		return sqlSession.selectOne("user.getUserInfo", no);
	}
	
	public String image(int no) {
		System.out.println("dao 들어옴");
		System.out.println(no);
		String saveName=sqlSession.selectOne("user.image",no);
		return saveName;
	}
	
	@RequestMapping(value="/changepass")
	public void changepass(@ModelAttribute UserVo userVo) {
		System.out.println(userVo);
		sqlSession.update("user.changepass",userVo);
		
	}
	
	@RequestMapping(value="/changeinfo")
	public void changeinfo(@ModelAttribute UserVo userVo) {
		System.out.println(userVo);
		sqlSession.update("user.changeinfo",userVo);
	}
	
	
}