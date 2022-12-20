package com.cos.soomgyo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.soomgyo.service.CommunityService;

@Controller
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	
	@GetMapping({"","/"})
	public String index(){
		return "index";
		
	}
	@GetMapping("/auth/community")
	public String community(Model model) {
		model.addAttribute("community", communityService.글목록());
		return "community/community";
	}
	
	@GetMapping("/saveboard")
	public String board() {
		return"community/CommunitySaveForm";
	}

}
