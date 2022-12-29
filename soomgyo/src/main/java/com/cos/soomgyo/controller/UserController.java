package com.cos.soomgyo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.soomgyo.config.auth.PrincipalDetail;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.model.Youtube;
import com.cos.soomgyo.repository.UserRepositroy;
import com.cos.soomgyo.service.RegisterMail;
import com.cos.soomgyo.service.UserService;
import com.cos.soomgyo.service.YoutubeService;







@Controller
public class UserController {
	@Autowired
	private YoutubeService youtubeService; 
	
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
	@Autowired
	RegisterMail registerMail;
	@GetMapping("auth/mailConfirm")
	@ResponseBody
	String mailConfirm(String email) throws Exception {
	   String code = registerMail.sendSimpleMessage(email);
	   System.out.println("인증코드 : " + code);
	   return code;
	}
	
	@GetMapping("/videoCategory")
	public String videocategory(Model model,@AuthenticationPrincipal PrincipalDetail principal){
		model.addAttribute("youtube",youtubeService.모든동영상());
		Users user =principal.getUser();
		model.addAttribute("category",user.getCategory());
		model.addAttribute("myvideo", youtubeService.메모보기(user));
		return "board/VideoCategory";
	}
	
	
	

	
}
