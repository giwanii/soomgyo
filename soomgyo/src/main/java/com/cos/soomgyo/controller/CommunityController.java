package com.cos.soomgyo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.soomgyo.model.Community;
import com.cos.soomgyo.service.CommunityService;
import com.cos.soomgyo.service.ReplyService;

@Controller
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	@Autowired
	private ReplyService replyService;
	
	@GetMapping({"","/"})
	public String index(){
		return "index";
		
	}
	@GetMapping("/auth/community")
	public String community(Model model) {
		model.addAttribute("community", communityService.글목록());
		return "community/community";
	}
	
	@GetMapping("/auth/community/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("community", communityService.글상세보기조회수(id));
		model.addAttribute("reply", replyService.replycount(id));
		return "community/CommunityDetail";
	}
	//게시글 수정하기
	@GetMapping("/community/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("community", communityService.글상세보기(id));
		return "community/CommunityUpdateForm";
	}
	
	@GetMapping("/saveboard")
	public String boardsaveForm() {
		return"community/CommunitySaveForm";
	}

}
