package com.cos.soomgyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;





@Controller
public class UserController {
	@GetMapping("/auth/login")
	public String loginForm(@RequestParam(value = "error", required = false) String error, 
				@RequestParam(value = "exception", required = false) String exception,
				Model model) {
		model.addAttribute("error", error);
		model.addAttribute("exception", exception);
		return "user/login";
	}
		
	@GetMapping("auth/join")
	public String join() {
		return "user/Join";
	}
	@GetMapping("auth/searchid")
	public String idsearch() {
		return "user/FogetID";
	}
	@GetMapping("auth/searchpwd")
	public String pwdsearch() {
		return "user/FogetPassword";
	}
	@GetMapping("auth/joinstudent")
	public String joinstu() {
		
		return"user/JoinStudent";
	}
	@GetMapping("auth/jointeacher")
	public String jointea() {
		
		return"user/JoinTeacher";
	}
	
	
	  /* 이메일 인증 */
   
		
	
}
