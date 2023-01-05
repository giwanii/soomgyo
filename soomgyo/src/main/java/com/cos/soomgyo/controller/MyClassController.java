package com.cos.soomgyo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.soomgyo.service.MyClassroomService;

@Controller
public class MyClassController {
	@Autowired
	private MyClassroomService classroomService;
	
	@GetMapping("/MyClassroom")
	public String myclass(Model model, @PageableDefault(size=10, sort = "id", 
			direction = Sort.Direction.DESC)Pageable pageable) {
		model.addAttribute("myclass", classroomService.영상목록(pageable));
		return "board/MyClassroom";
	}
}
