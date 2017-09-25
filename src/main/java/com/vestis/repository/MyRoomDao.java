package com.vestis.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.ClothWeatherVo;

@Repository
public class MyRoomDao {
	@Autowired
	SqlSession sqlSession;
	
	public int setWeather(ClothWeatherVo clothWeatherVo) {
		//return sqlSession.selectOne();
		return sqlSession.insert("myroom.insertWeather");
	}
}
