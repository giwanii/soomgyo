package com.cos.soomgyo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


import com.cos.soomgyo.model.Community;
import com.cos.soomgyo.service.CommunityService;
//import com.cos.soomgyo.service.ReplyService;

import com.cos.soomgyo.model.Youtube;
import com.cos.soomgyo.service.CommunityService;
import com.cos.soomgyo.service.YoutubeService;


@Controller
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	@Autowired

//	private ReplyService replyService;

	private YoutubeService youtubeService; 

	
	@GetMapping({"","/"})
	public String index(Model model){
		Page<Youtube> firstPage = youtubeService.관련동영상();
		List<Youtube> pageContetns=firstPage.getContent();
		model.addAttribute("youtube", pageContetns );
		model.addAttribute("community", communityService.글목록());
		return "index";
		
	}
	@GetMapping("/auth/community")
	public String community(Model model) {
		model.addAttribute("community", communityService.글목록());
		return "community/community";
	}
	
	@GetMapping("/video/{id}")
	public String detailvideo(@PathVariable int id, Model model) {
		model.addAttribute("youtube", youtubeService.동영상상세보기(id));
		return "board/VideoDetail";
	}
	
//	@GetMapping("/auth/community/{id}")
//	public String findById(@PathVariable int id, Model model) {
//		model.addAttribute("community", communityService.글상세보기조회수(id));
//		model.addAttribute("reply", replyService.replycount(id));
//		return "community/CommunityDetail";
//	}
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
