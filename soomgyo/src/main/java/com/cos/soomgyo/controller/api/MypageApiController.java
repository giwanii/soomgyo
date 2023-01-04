package com.cos.soomgyo.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.soomgyo.dto.ResponseDto;
import com.cos.soomgyo.service.MypageService;

public class MypageApiController {
	@Autowired
	MypageService mypageService;
	
	
}
