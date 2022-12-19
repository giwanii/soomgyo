package com.cos.soomgyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FindTeacherController {
	
	@GetMapping("auth/FindTeacher")
	public String FindTeacher() {
		return "board/TeacherFind";
	}
}
