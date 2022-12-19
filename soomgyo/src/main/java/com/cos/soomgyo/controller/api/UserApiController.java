package com.cos.soomgyo.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.cos.soomgyo.dto.ResponseDto;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.service.UserService;

public class UserApiController {
	@Autowired
	private UserService userService;
	
	@PostMapping("/auth/joinProc")//회원가입 로직이 실행되는 부분
	public ResponseDto<Integer> save(@RequestBody Users user) {
		System.out.println("UserApiController호출됨");
		userService.회원가입(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);

	}
}
