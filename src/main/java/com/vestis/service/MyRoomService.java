package com.vestis.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vestis.repository.MyRoomDao;
import com.vestis.util.WeatherInfo;
import com.vestis.util.WeatherVo;
import com.vestis.vo.ClothListVo;
import com.vestis.vo.ClothWeatherVo;
import com.vestis.vo.CodiVo;
import com.vestis.vo.CodibookVo;
import com.vestis.vo.ImgVo;
import com.vestis.vo.UserVo;

@Service
public class MyRoomService {
	@Autowired
	MyRoomDao myRoomDao;
	
	public void SaveCodi(String[] choice, int temp, int weatherNo, int userNo, int authNo, String filename, long fileSize) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(cal.getTime());

		ClothWeatherVo clothWeatherVo = new ClothWeatherVo(weatherNo, temp);
		int weatherSaveNo = myRoomDao.addWeather(clothWeatherVo);
		int weatherchsNo = myRoomDao.addWeather(clothWeatherVo);

		ImgVo imgVo = new ImgVo("D:\\javastudy\\file\\", filename, ".png", fileSize, filename+".png");
		int imgNo = myRoomDao.addImg(imgVo);		

		CodiVo codiVo = new CodiVo(authNo, userNo, 1, imgNo, 0, date, weatherSaveNo, date, weatherchsNo);
		int codiNo = myRoomDao.addCodi(codiVo);
		
		for(int i=0; i<choice.length; i++) {
			int no = Integer.parseInt(choice[i]);
			myRoomDao.addCodiCloth(codiNo, no);
		}

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
	
	public List<CodibookVo> getList(String purpose, int num, int no) {
		return myRoomDao.getList(purpose, num, no);
	}
	
	public void chooseClick(int no, int temp, int weatherNo) {
		int choiceWeather = myRoomDao.getWeather(no);
		System.out.println(choiceWeather);
		myRoomDao.setChoiceWeather(choiceWeather, temp, weatherNo);
		System.out.println("채택 날씨 저장 완료");
		myRoomDao.chooseClick(no);
	}
	
	public void likebtnClick(int voNo, int authNo) {
		myRoomDao.likebtnClick(voNo, authNo);
	}
	
	public void deleteBtnClick(int no) {
		System.out.println("삭제버튼2");
		myRoomDao.deleteBtnClick(no);
	}
	
	public List<ClothListVo> getClothList(int type, int userNo) {
		System.out.println("옷 들어옴");
		return myRoomDao.getClothList(type, userNo);
	}

}