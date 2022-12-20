package com.cos.soomgyo.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.soomgyo.config.auth.PrincipalDetail;
import com.cos.soomgyo.dto.ResponseDto;
import com.cos.soomgyo.model.Community;
import com.cos.soomgyo.service.CommunityService;

@RestController
public class CommunityApiController {
	@Autowired
	private CommunityService communityService;
	@PostMapping("/api/board")
	public ResponseDto<Integer> save(@RequestBody Community community, @AuthenticationPrincipal PrincipalDetail principal){
		communityService.글쓰기(community,principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
}
