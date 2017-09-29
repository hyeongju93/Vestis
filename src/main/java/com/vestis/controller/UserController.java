package com.vestis.controller;

import java.net.HttpURLConnection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.service.UserService;
import com.vestis.vo.UserVo;
import com.vestis.vo.WeatherVo;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("joinform")
	public String joinform() {
		System.out.println("joinform에 들어옴");
		return "user/joinform";
	}
	
	@RequestMapping("join")
	public String join(@ModelAttribute UserVo userVo){
		System.out.println(userVo);
		userService.join(userVo);
		//weatherVo 사용법
		/*WeatherVo we=new WeatherVo();
		we.setting(userVo.getLat(),userVo.getLon());
		System.out.println(we);
		*/
		System.out.println("join 들어옴");
		return "index";
	}
	
	@RequestMapping("addressform")
	public String addressform() {
		return "user/addressform";
	}
	
	@ResponseBody
	@RequestMapping(value="login",method=RequestMethod.POST)
	public int login(@RequestParam("email") String email,
					@RequestParam("password") String password,HttpSession session) {
		System.out.println(email);
		System.out.println(password);
		int result;
		UserVo authUser=userService.check(email,password);
		System.out.println("마지막단계");
		if(authUser != null) {
			session.setAttribute("authUser", authUser);
			result=1;
		} else {
			result=0;
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="idcheck",method=RequestMethod.POST)
	public int idcheck(@RequestParam("email") String email) {
		System.out.println("들어옴");
		System.out.println(email);
		int result=1;
		result=userService.idcheck(email);
		System.out.println(result);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="image",method=RequestMethod.POST)
	public UserVo getUserInfo(@RequestParam("mo") int mo) {
		System.out.println(mo);
		UserVo userVo =userService.getUserInfo(mo);
		System.out.println("완주");
		System.out.println(userVo);
		return userVo;
	}
	
	@ResponseBody
	@RequestMapping(value="snslogin",method=RequestMethod.POST)
	public int snslogin(@RequestParam(value="email", required = false) String email,
					@RequestParam(value="name", required = false) String name,
					@RequestParam(value = "id", required = false) String id,HttpSession session) {
		System.out.println(email);
		System.out.println(name);
		System.out.println(id);
		UserVo auths= (UserVo) session.getAttribute("authUser");
		System.out.println(auths);
		if (id != null) {
			
			
			UserVo authUser = userService.check(id, id);
			System.out.println(authUser);
			
			if(auths != null) {
				//이미 로그인이 되어 있는 상태
				return 2;
			} else {
				//로그인이 안되어 있는 상태
				
				//회원가입 유무 확인
				if(authUser != null) {
				//회원가입은 되어 있음
				session.setAttribute("authUser", authUser);
				
				return 1;	
						
				}
				UserVo auth=new UserVo();
				//회원가입도 안되어 있음
				auth.setEmail(id);
				auth.setPassword(id);
				auth.setName(name);
				auth.setNicname(name);
				System.out.println(auth);
				userService.snsjoin(auth);
				
				authUser = userService.check(id, id);
				session.setAttribute("authUser", authUser);
				return 1;
				
			}
			
		} else {
			//페북로그인 실패
			System.out.println("로그인실패");
			
			return 0;
		}
		
	}
	
	
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("authUser");
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value="/modifyform",method=RequestMethod.GET)
	public String modifyform(HttpSession session,Model model) {
		UserVo userVo=(UserVo) session.getAttribute("authUser");
		int num=userVo.getNo();
		UserVo user=userService.getuser(num);
		System.out.println(user);
		
		String var=user.getBirth();
		String[] value=var.split("-");
		String[] val=value[2].split(" ");
		System.out.println(value[0]);
		System.out.println(value[1]);
		System.out.println(val[0]);
		user.setBirthyear(value[0]);
		user.setBirthmonth(value[1]);
		user.setBirthday(val[0]);
		
		System.out.println("모든 정보");
		System.out.println(user);
		model.addAttribute("user", user);
		
		return "user/modifyform";
	}
	
	/*@RequestMapping(value="/upload")
	public String upload(@RequestParam("file") MultipartFile file,Model model) {
		System.out.println("file: "+file);
		String saveName=userService.restore(file);
		model.addAttribute("saveName",saveName);
		return "index";
	}*/
	
	@RequestMapping(value="/proimage")
	public String proimage(@RequestParam("file") MultipartFile file,HttpSession session) {
		UserVo authuser= (UserVo) session.getAttribute("authUser");
		int personNo=authuser.getNo();
		int num=userService.restore(file,personNo);
		authuser.setProfile_no(num);
		System.out.println(num);
		System.out.println("들어옴");
		System.out.println(file);
		return "index";
	}
	
	@ResponseBody
	@RequestMapping(value="/changepass",method=RequestMethod.POST)
	public String changepass(@ModelAttribute UserVo userVo) {
		System.out.println(userVo);
		userService.changepass(userVo);
		return "index";
	}
	
	@RequestMapping(value="/index",method=RequestMethod.POST)
	public String index() {
		return "index";
	}
	
	@ResponseBody
	@RequestMapping(value="/changeinfo")
	public int changeinfo(@ModelAttribute UserVo userVo,HttpSession session) {
		UserVo authuser= (UserVo) session.getAttribute("authUser");
		authuser.setNicname(userVo.getNicname());
		authuser.setGender(userVo.getGender());
		authuser.setLat(userVo.getLat());
		authuser.setLon(userVo.getLon());
		System.out.println(userVo);
		userService.changeinfo(userVo);	
		return 1;
	}
	

}