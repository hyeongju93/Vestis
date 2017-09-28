package com.vestis.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.ImgVo;
import com.vestis.vo.MarketVo;

@Repository
public class MarketDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insert(MarketVo marketVo) {
		return sqlSession.insert("qa.insert", marketVo);
	}
	
	public List<ImgVo> getlist() {
		/*System.out.println("이미지 들어옴");*/
		return sqlSession.selectList("market.getList");
	}
}
