package com.vestis.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vestis.vo.ClothListVo;
import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.ImgVo;

@Repository
public class MyRoomDao {
	@Autowired
	SqlSession sqlSession;
	
	public void addCodiCloth(int codiNo, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("codiNo", codiNo);
		map.put("no", no);
		sqlSession.insert("myroom.insertCodiCloth", map);
	}
	
	public int addWeather(ClothWeatherVo clothWeatherVo) {
		sqlSession.insert("myroom.insertWeather", clothWeatherVo);
		return clothWeatherVo.getNo();
	}
	
	public int addImg(ImgVo imgVo) {
		sqlSession.insert("myroom.insertImg", imgVo);
		
		return imgVo.getNo();
	}
	
	public int addCodi(CodiVo codiVo) {
		sqlSession.insert("myroom.insertCodi", codiVo);
		
		return codiVo.getNo();
	}
	
	public List<CodibookVo> getList(String purpose, int num, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("purpose", purpose);	
		map.put("num", num);
		map.put("authNo", no);
		return sqlSession.selectList("myroom.getCodiBookList", map);
	}
	
	public void chooseClick(int no) {
		sqlSession.update("myroom.chooseClick", no);
	}
	
	public int getWeather(int no) {
		return sqlSession.selectOne("myroom.getWeather", no);
	}
	
	public void setChoiceWeather(int choiceWeather, int temp, int weatherNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("choiceWeather", choiceWeather);	
		map.put("temp", temp);	
		map.put("weatherNo", weatherNo);
		System.out.println("채택 날씨 저장 dao");
		sqlSession.update("myroom.setChoiceWeather", map);
	}
	
	public void likebtnClick(int voNo, int authNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("voNo", voNo);
		map.put("authNo", authNo);
		sqlSession.insert("myroom.likebtnClick", map);
	}
	
	public List<ClothListVo> getClothList(int type, int userNo){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		map.put("userNo", userNo);
		
		return sqlSession.selectList("myroom.getClothList", map);
	}
}