package com.cos.soomgyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommunityController {
	@GetMapping({"","/"})
	public String index(){
		return "index";
		
	}
	@GetMapping("/auth/community")
	public String community() {
		return "community/community";
	}
	
	@GetMapping("/saveboard")
	public String board() {
		return"community/CommunitySaveForm";
	}

}
