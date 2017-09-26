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
	
	public void Save(int temp, int weatherNo, int userNo, int authNo, String filename, long fileSize) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(cal.getTime());
		
		ClothWeatherVo clothWeatherVo = new ClothWeatherVo(weatherNo, temp);
		int weatherSaveNo = myRoomDao.setWeather(clothWeatherVo);
		int weatherchsNo = myRoomDao.setWeather(clothWeatherVo);
		
		ImgVo imgVo = new ImgVo("D:\\javastudy\\file\\", filename, ".png", fileSize, filename);
		
		CodiVo codiVo = new CodiVo(authNo, userNo, 2, 1, 0, date, weatherSaveNo, date, weatherchsNo);
	}

}
