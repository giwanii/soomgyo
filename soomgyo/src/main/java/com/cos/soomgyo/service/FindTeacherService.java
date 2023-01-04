package com.cos.soomgyo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cos.soomgyo.model.FindTeacher;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.repository.FindTeacherRepository;

@Service
public class FindTeacherService {
	@Autowired
	private FindTeacherRepository findTeacherRepository;
	
	@Transactional
	public void 강사정보등록(Users user, FindTeacher findTeacher) {
		findTeacher.setUsers(user);
		findTeacherRepository.save(findTeacher);
	}
	@Transactional
	public List<FindTeacher> 글목록(){
		return findTeacherRepository.findAll();
	}
	@Transactional
	public FindTeacher 글상세보기(int id) {
		return findTeacherRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("글 상세보기 실패 : 아이디 찾을수없음");
				});
	}
	
	
}
