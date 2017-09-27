package com.vestis.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vestis.repository.MyRoomDao;
import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiVo;
import com.vestis.vo.ImgVo;

@Service
public class MyRoomService {
	@Autowired
	MyRoomDao myRoomDao;
	
	public void SaveCodi(int temp, int weatherNo, int userNo, int authNo, String filename, long fileSize) {
		System.out.println("서비스 들어옴");
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(cal.getTime());
		System.out.println("시간저장");
		ClothWeatherVo clothWeatherVo = new ClothWeatherVo(weatherNo, temp);
		int weatherSaveNo = myRoomDao.addWeather(clothWeatherVo);
		System.out.println("지금 날씨 저장");
		int weatherchsNo = myRoomDao.addWeather(clothWeatherVo);
		System.out.println("지금 날씨 저장2");
		ImgVo imgVo = new ImgVo("D:\\javastudy\\file\\", filename, ".png", fileSize, filename+".png");
		int imgNo = myRoomDao.addImg(imgVo);		
		System.out.println("이미지 저장");
		CodiVo codiVo = new CodiVo(authNo, userNo, 1, imgNo, 0, date, weatherSaveNo, date, weatherchsNo);
		System.out.println(codiVo.toString());
		myRoomDao.addCodi(codiVo);
		System.out.println("코디 저장완료");
	}

}
