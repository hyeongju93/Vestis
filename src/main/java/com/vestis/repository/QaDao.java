package com.vestis.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.CommentVo;
import com.vestis.vo.QaVo;


@Repository
public class QaDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<QaVo> getlist(int endNum,int startNum) {
		System.out.println("dao µé¾î¿È");
		Map<String, Object> pageMap=new HashMap<String,Object>();
		pageMap.put("endNum", endNum);
		pageMap.put("startNum", startNum);
		System.out.println(startNum);
		System.out.println(endNum);
		System.out.println("º¸³¿");
		return sqlSession.selectList("qa.getlist",pageMap);
	}
	
	public List<QaVo> getlist2(int endNum,int startNum) {
		System.out.println("dao µé¾î¿È");
		Map<String, Object> pageMap=new HashMap<String,Object>();
		pageMap.put("endNum", endNum);
		pageMap.put("startNum", startNum);
		System.out.println(startNum);
		System.out.println(endNum);
		System.out.println("º¸³¿");
		return sqlSession.selectList("qa.getlist2",pageMap);
	}
	
	public void commetlist(CommentVo commentVo ){
	System.out.println(commentVo);
	sqlSession.insert("qa.commentlist", commentVo);
	}
	
	
	public List<CommentVo> commentlist2(QaVo qaVo ){
	System.out.println("dao±îÁö Á¤»ó");
	System.out.println(qaVo);
	return sqlSession.selectList("qa.commentlist2",qaVo);
		
	}
	
	public int gettotalcount0() {
		return sqlSession.selectOne("qa.gettotalcount0");
	}
	
	public int gettotalcount1() {
		return sqlSession.selectOne("qa.gettotalcount1");
	}
	
	public int gettotalcount2() {
		return sqlSession.selectOne("qa.gettotalcount2");
	}
	
	public QaVo getqa(QaVo qavo) {
		return sqlSession.selectOne("qa.getqa", qavo);
	}
		
	public int insert(QaVo qavo) {
		return sqlSession.insert("qa.insert", qavo);
	}
	
	public int update(QaVo qavo) {
		return sqlSession.update("qa.update", qavo);
	}
	
	public int delete(int num) {
		return sqlSession.delete("qa.delete", num);
	}
	
	public int codelete(int num) {
		return sqlSession.delete("qa.codelete", num);
	}
	
	
	public int searchcount(String nicname) {
		Map<String, Object> pageMap=new HashMap<String,Object>();
		pageMap.put("nicname", '%'+nicname+'%');
		return sqlSession.selectOne("qa.searchcount",pageMap);
	}
	
	public List<QaVo> search(String nicname,int startNum,int endNum) {
		Map<String, Object> pageMap=new HashMap<String,Object>();
		pageMap.put("endNum", endNum);
		pageMap.put("startNum", startNum);
		pageMap.put("nicname", '%'+nicname+'%');
		List<QaVo> list=sqlSession.selectList("qa.search", pageMap);
		return list;
	}
	
}