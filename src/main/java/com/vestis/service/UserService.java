package com.vestis.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.repository.UserDao;
import com.vestis.vo.FileVo;
import com.vestis.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public void join(@ModelAttribute UserVo userVo) {
		System.out.println("service");
		System.out.println(userVo);
		userVo.setBirth(userVo.getBirthyear()+"/"+userVo.getBirthmonth()+"/"+userVo.getBirthday());
		userDao.join(userVo);
	}
	
	public void snsjoin(@ModelAttribute UserVo userVo) {
		System.out.println("service");
		System.out.println(userVo);
		userDao.snsjoin(userVo);
	}
	
	public UserVo check(String email,String password) {
		return userDao.check(email,password);
	}
	
	public UserVo getUserInfo(int mo ) {
		return userDao.getUserInfo(mo);
	}
	
	public UserVo getuser(int num ) {
		return userDao.getuser(num);
	}
	
	
	public int idcheck(String email) {
		UserVo userVo=userDao.idcheck(email);
		System.out.println(userVo);
		if(userVo==null) {
			return 1;
		}
		return 2;
	}
	
	@RequestMapping(value="/changepass")
	public void changepass(@ModelAttribute UserVo userVo) {
		userDao.changepass(userVo);
	}
	
	@RequestMapping(value="/changeinfo")
	public void changeinfo(@ModelAttribute UserVo userVo) {
		String year=userVo.getBirthyear();
		String month=userVo.getBirthmonth();
		String day=userVo.getBirthday();
		String birth=year+"/"+month+"/"+day;
		userVo.setBirth(birth);
		userDao.changeinfo(userVo);
	}
	
	
	public int restore(MultipartFile file,int personNo) {
		FileVo fileVo=new FileVo();
		String saveDir="D:\\javastudy\\file\\";
		
		
		//원 파일이름
		String orgName=file.getOriginalFilename();
		System.out.println("OrgName: "+orgName);
		fileVo.setName(orgName);
		
		//확장자
		String exName=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("ExName: "+exName);
		fileVo.setType(exName);
		
		//파일사이즈
		long fileSize=file.getSize();
		System.out.println("SIZE: "+fileSize);
		fileVo.setSizes(fileSize);
		
		//저장파일이음
		String saveName=System.currentTimeMillis()+UUID.randomUUID().toString()+exName;
		System.out.println(saveName);
		fileVo.setDb_name(saveName);
		
		//파일패스
		String filePath = saveDir+saveName;
		System.out.println(filePath);
		fileVo.setAddress(filePath);
		
		// 파일카피
		try {
			
			byte[] fileData = file.getBytes();	//size가 아니고 실제데이터 그림의 배열같은거
			System.out.println("fileData: " + fileData);
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			if (bout != null) {
				bout.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println(fileVo);
		int num=userDao.restore(fileVo,personNo);
		return num;
	}

}