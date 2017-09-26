package com.vestis.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.repository.FileUploadDao;
import com.vestis.vo.ImgVo;

@Service
public class FileUploadService {

	@Autowired
	private FileUploadDao uploadDao;
	
	public String restore(MultipartFile file) {
		ImgVo imgVo=new ImgVo();
		
		
		//파일저장할 위치
		String saveDir="D:\\javaStudy\\file\\";
		
		//원 파일이름 찾기
		String orgName=file.getOriginalFilename();
		System.out.println("orgName: "+orgName);
		imgVo.setName(orgName);
		
		//확장자찾기
		String exName=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName: "+exName);
		imgVo.setType(exName);
		
		
		//파일사이즈 찾기
		long fileSize=file.getSize();
		System.out.println("fileSize: "+fileSize);
		imgVo.setSizes(fileSize);
		
		//유니크한 저장파일이름 만들기
		String saveName= System.currentTimeMillis()+UUID.randomUUID().toString()+exName;
		System.out.println("saveName: "+saveName);		
		imgVo.setDbName(saveName);
		
		//파일패스=저장되있는 위치
		String filePath=saveDir+saveName;
		System.out.println("filePath: "+filePath);
		imgVo.setAddress(filePath);
		
		String imgNo=uploadDao.upload(imgVo);
		
		//파일복사 파일패스에 실체가 저장되어 있어야지
		try {
			byte[] fileDate=file.getBytes();
			OutputStream out=new FileOutputStream(filePath);
			BufferedOutputStream bout=new BufferedOutputStream(out);
			
			bout.write(fileDate);
			bout.flush();
			if(bout != null) {
				bout.close();
			}
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		return imgNo;
		
	}
	
	public void add(int valh,int huserNo,int imgNo) {
		uploadDao.add(valh,huserNo, imgNo);
	}
	
	public List<ImgVo> list() {//보내줄 조건 없고 리스트로 받아
		return uploadDao.getImglist();
	}
}
