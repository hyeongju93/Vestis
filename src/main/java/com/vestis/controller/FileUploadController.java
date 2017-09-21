package com.vestis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.service.FileUploadService;


@Controller
@RequestMapping(value="/fileupload")
public class FileUploadController {

	@Autowired
	private FileUploadService fileUploadService;
	//서비스에 파일 전체를 넘김
	
	@RequestMapping(value="/form")
	public String form() {
		return "fileupload/form";
	}
	
	
	@RequestMapping(value="/upload")
	public String upload(@RequestParam("file") MultipartFile file, Model model) {
		
		String saveName=fileUploadService.restore(file);
		model.addAttribute("saveName",saveName);
		//jsp달린 주소보내
		
		return "result";
	}
	
	/*@RequestMapping(value="/upload")
	public String upload(@ModelAttribute ImgVo imgVo) {
		fileUploadService.upload(imgVo);
	}
	*/
}
