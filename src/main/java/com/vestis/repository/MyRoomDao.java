package com.vestis.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiVo;
import com.vestis.vo.ImgVo;

@Repository
public class MyRoomDao {
	@Autowired
	SqlSession sqlSession;
	
	public int addWeather(ClothWeatherVo clothWeatherVo) {
		System.out.println("날씨 dao 들어옴");
		sqlSession.insert("myroom.insertWeather", clothWeatherVo);
		System.out.println("날씨 db 저장완료");
		return clothWeatherVo.getNo();
	}
	
	public int addImg(ImgVo imgVo) {
		sqlSession.insert("myroom.insertImg", imgVo);
		
		return imgVo.getNo();
	}
	
	public void addCodi(CodiVo codiVo) {
		System.out.println("코디 dao 들어옴");
		sqlSession.insert("myroom.insertCodi", codiVo);
		System.out.println("코디 dao 저장완료");
	}
}
