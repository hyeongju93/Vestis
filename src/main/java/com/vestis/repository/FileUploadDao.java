package com.vestis.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vestis.vo.ImgVo;



@Repository
public class FileUploadDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public String upload(ImgVo imgVo) {
		System.out.println(imgVo);
		sqlSession.insert("img.upload", imgVo);
		String dbName=imgVo.getDbName();
		int imgNu=sqlSession.selectOne("img.selectByImg",dbName );
		String imgNo=String.valueOf(imgNu);
		System.out.println(imgNo);
		return imgNo;
	}
	
	
	public void add(int valh,int huserNo,int imgNo) {
		
		Map<String, Object> clothMap=new HashMap<String,Object>();
	      clothMap.put("typeNo", valh);
	      clothMap.put("personNo", huserNo);
	      clothMap.put("imgNo", imgNo);
		System.out.println(clothMap);
		sqlSession.insert("img.add", clothMap);
	}
	
	public List<ImgVo> getImglist() {
		/*System.out.println("이미지 들어옴");*/
		return sqlSession.selectList("img.getList");
	}
	
	public List<ImgVo> send(int clothNo) {
		/*System.out.println("이미지 들어옴");*/
		int typeNo=clothNo;
		if(clothNo==0) {
			return sqlSession.selectList("img.getList");
		} else {
			
		return sqlSession.selectList("img.getList2",typeNo);
		}
	}
}
