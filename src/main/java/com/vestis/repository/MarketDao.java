package com.vestis.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.ClothVo;
import com.vestis.vo.ImgVo;
import com.vestis.vo.MarketVo;

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
	
	public List<MarketVo> getlist2() {
		List<MarketVo> list=sqlSession.selectList("market.getlist2");
		return list;
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
	
	/*public int delete() {
		return sqlSession.selectList("market.delete");
	}*/
}
