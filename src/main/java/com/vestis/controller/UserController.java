package com.vestis.controller;

import java.net.HttpURLConnection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vestis.service.UserService;
import com.vestis.vo.UserVo;

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
	
	

}
