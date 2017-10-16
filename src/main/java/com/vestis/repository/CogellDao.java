package com.vestis.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.CenterVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.UserVo;

@Repository
public class CogellDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<UserVo> joinrank(){
		System.out.println("dao 직전");
		return sqlSession.selectList("cogell.joinrank");
	}
	
	public List<UserVo> clothrank(){
		System.out.println("cdao 직전");
		return sqlSession.selectList("cogell.clothrank");
	}
	
	public List<CodibookVo> getList(String purpose, int num, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(num+purpose+no);
		map.put("purpose", purpose);	
		map.put("num", num);
		map.put("authNo", no);
		List<CodibookVo> list =sqlSession.selectList("cogell.getCodiBookList", map);
		System.out.println(list.size());
		return sqlSession.selectList("cogell.getCodiBookList", map);
	}
	
	public List<CodibookVo> getList2(String purpose, int num, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(num+purpose+no);
		map.put("purpose", purpose);	
		map.put("num", num);
		map.put("authNo", no);
		List<CodibookVo> list =sqlSession.selectList("cogell.getCodiBookList", map);
		System.out.println(list.size());
		return sqlSession.selectList("cogell.getCodiBookList2", map);
	}
	
	public List<CodibookVo> getList3(String purpose, int num, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(num+purpose+no);
		map.put("purpose", purpose);	
		map.put("num", num);
		map.put("authNo", no);
		return sqlSession.selectList("cogell.getCodiBookList3", map);
	}
	
	
	public List<CodibookVo> getRList(String purpose, int num, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(num+purpose+no);
		map.put("purpose", purpose);	
		map.put("num", num);
		map.put("authNo", no);
		return sqlSession.selectList("cogell.getCodiBookRList", map);
	}

	public List<CodibookVo> getList4(String purpose, int num, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(num+purpose+no);
		map.put("purpose", purpose);	
		map.put("num", num);
		map.put("authNo", no);
		
		return sqlSession.selectList("cogell.getCodiBookList4", map);
	}
}
