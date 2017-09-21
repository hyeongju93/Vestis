package com.vestis.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.vestis.vo.ImgVo;



@Repository
public class FileUploadDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void upload(@ModelAttribute ImgVo imgVo) {
		System.out.println(imgVo);
		sqlSession.insert("img.upload", imgVo);
		
	}
	
}
