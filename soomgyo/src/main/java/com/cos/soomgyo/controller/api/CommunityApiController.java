package com.cos.soomgyo.controller.api;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.soomgyo.model.Community;

@RestController
public class CommunityApiController {
	@PostMapping("/api/board")
	public ResponseDto<Integer> save(@RequestBody Community community){
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
}
