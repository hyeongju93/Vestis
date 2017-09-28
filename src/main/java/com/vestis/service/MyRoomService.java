package com.vestis.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vestis.repository.MyRoomDao;
import com.vestis.util.WeatherInfo;
import com.vestis.util.WeatherVo;
import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.ImgVo;
import com.vestis.vo.UserVo;

@Service
public class MyRoomService {
	@Autowired
	MyRoomDao myRoomDao;
	
	public void SaveCodi(int temp, int weatherNo, int userNo, int authNo, String filename, long fileSize) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(cal.getTime());

		ClothWeatherVo clothWeatherVo = new ClothWeatherVo(weatherNo, temp);
		int weatherSaveNo = myRoomDao.addWeather(clothWeatherVo);
		int weatherchsNo = myRoomDao.addWeather(clothWeatherVo);

		ImgVo imgVo = new ImgVo("D:\\javastudy\\file\\", filename, ".png", fileSize, filename+".png");
		int imgNo = myRoomDao.addImg(imgVo);		

		CodiVo codiVo = new CodiVo(authNo, userNo, 1, imgNo, 0, date, weatherSaveNo, date, weatherchsNo);
		myRoomDao.addCodi(codiVo);
	}
	
	public ClothWeatherVo getWeather(UserVo authUser) {
		WeatherVo weatherVo = WeatherInfo.setting(authUser.getLat(), authUser.getLon());
		String code = weatherVo.getSkyCode();
		code = code.substring(code.length() - 2, code.length());
		int weatherNo = Integer.parseInt(code);
		int indexNo;
		if (weatherNo == 1 || weatherNo == 2) {
			indexNo = 0;
		} else if (weatherNo == 3 || weatherNo == 7 || weatherNo == 11) {
			indexNo = 1;
		} else if (weatherNo == 5 || weatherNo == 9 || weatherNo == 13) {
			indexNo = 3;
		} else {
			indexNo = 2;
		}
		
		int temp = Integer.parseInt(weatherVo.getTemperature().substring(0, 2));
		
		ClothWeatherVo clothWeatherVo = new ClothWeatherVo();
		clothWeatherVo.setTemp(temp);
		clothWeatherVo.setWeatherNo(indexNo);
		
		return clothWeatherVo;
	}
	
	public List<CodibookVo> getList(String purpose, int num) {
		return myRoomDao.getList(purpose, num);
	}

}
