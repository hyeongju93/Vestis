package com.vestis.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.CenterVo;

@Repository
public class CenterDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<CenterVo> selectAll(){
		return sqlSession.selectList("center.selectAll");
	}

	public CenterVo selectCenter(int no) {
		return sqlSession.selectOne("center.selectCenter", no);
	}
	
	
	public int insert(CenterVo centerVo) {
		return sqlSession.insert("center.insert", centerVo);
	}
	
	public int delete(CenterVo centerVo) {
		return sqlSession.delete("center.delete", centerVo);
	}
	
	public int update(CenterVo centerVo) {
		System.out.println(centerVo.toString());
		return sqlSession.update("center.update", centerVo);
	}
	
	
}