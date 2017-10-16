package com.vestis.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.ClothVo;
import com.vestis.vo.CommentVo;
import com.vestis.vo.ImgVo;
import com.vestis.vo.MarketCommentVo;
import com.vestis.vo.MarketVo;
import com.vestis.vo.QaVo;

@Repository
public class MarketDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insert(MarketVo marketVo) {
		System.out.println("dao");
		System.out.println(marketVo);
		return sqlSession.insert("market.insert", marketVo);
	}
	
	public List<ImgVo> getlist() {
		/*System.out.println("이미지 들어옴");*/
		return sqlSession.selectList("market.getList");
	}
	
	public List<MarketVo> getlist2(int endNum,int startNum) {
		System.out.println("dao 들어옴");
		Map<String, Object> pageMap=new HashMap<String,Object>();
		pageMap.put("endNum", endNum);
		pageMap.put("startNum", startNum);
		System.out.println(startNum);
		System.out.println(endNum);
		return sqlSession.selectList("market.getlist2",pageMap);
	}
	
	public int gettotalcount2() {
		return sqlSession.selectOne("market.gettotalcount2");
	}
	
	
	public int dbdb(String dbName) {

		System.out.println("dao");
		System.out.println(dbName);
		Map<String, Object> dbMap=new HashMap<String,Object>();
	    dbMap.put("dbName",dbName);
	    ClothVo clothVo=sqlSession.selectOne("market.dbdb",dbMap);
	    System.out.println(clothVo.getNo());
	    return clothVo.getNo();
	}
	
	public int searchcount(String nicname) {
		Map<String, Object> pageMap=new HashMap<String,Object>();
		pageMap.put("nicname", '%'+nicname+'%');
		return sqlSession.selectOne("market.searchcount",pageMap);
	}
	
	public List<MarketVo> search(String nicname,int startNum,int endNum) {
		Map<String, Object> pageMap=new HashMap<String,Object>();
		pageMap.put("endNum", endNum);
		pageMap.put("startNum", startNum);
		pageMap.put("nicname", '%'+nicname+'%');
		List<MarketVo> list=sqlSession.selectList("market.search", pageMap);
		return list;
	}
	
	public int delete(int num) {
		return sqlSession.delete("market.delete", num);
	}
	
	public MarketVo getmarket(MarketVo marketVo) {
		return sqlSession.selectOne("market.getmarket", marketVo);
	}
	
	public int update(MarketVo marketVo) {
		return sqlSession.update("market.update", marketVo);
	}
	
	public void commetlist(MarketCommentVo marketcommentVo ){
		System.out.println(marketcommentVo);
		sqlSession.insert("market.commentlist", marketcommentVo);
		}
		
		
	public List<MarketCommentVo> commentlist2(MarketVo marketVo ){
		System.out.println("dao들어옴");
		System.out.println(marketVo);
		return sqlSession.selectList("market.commentlist2",marketVo);		
	}
		
	public int codelete(int num) {
		System.out.println("codelete");
		sqlSession.delete("market.codelete", num);
		return num;
	}
	
	public int image(int mo) {
		int fileNo=sqlSession.selectOne("market.image",mo);
		System.out.println(fileNo);
		return fileNo;
	}
	
	public String image2(int fileNo) {
		String savename=sqlSession.selectOne("market.image2",fileNo);
		System.out.println(savename);
		return savename;
	}
	
}
