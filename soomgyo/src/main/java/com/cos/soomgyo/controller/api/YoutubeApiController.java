package com.cos.soomgyo.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.soomgyo.dto.ResponseDto;
import com.cos.soomgyo.model.Youtube;
import com.cos.soomgyo.service.YoutubeService;

@RestController
public class YoutubeApiController {
		@Autowired
		private YoutubeService youtubeService;
		
		@PostMapping("/auth/updatevideo")//회원가입 로직이 실행되는 부분
		public ResponseDto<Integer> save(@RequestBody Youtube youtube) {
			youtubeService.영상저장(youtube);
			return new ResponseDto<Integer>(HttpStatus.OK.value(),1);

		}
		
		

}
