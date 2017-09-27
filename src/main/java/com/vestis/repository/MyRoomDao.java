package com.vestis.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.ImgVo;

@Repository
public class MyRoomDao {
	@Autowired
	SqlSession sqlSession;
	
	public int addWeather(ClothWeatherVo clothWeatherVo) {
		sqlSession.insert("myroom.insertWeather", clothWeatherVo);
		return clothWeatherVo.getNo();
	}
	
	public int addImg(ImgVo imgVo) {
		sqlSession.insert("myroom.insertImg", imgVo);
		
		return imgVo.getNo();
	}
	
	public void addCodi(CodiVo codiVo) {
		sqlSession.insert("myroom.insertCodi", codiVo);
	}
	
	public List<CodibookVo> getList() {
		return sqlSession.selectList("myroom.getCodiBookList");
	}
}
