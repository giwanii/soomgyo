package com.cos.soomgyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	@GetMapping("auth/login")
	public String login() {
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
	
	
}
