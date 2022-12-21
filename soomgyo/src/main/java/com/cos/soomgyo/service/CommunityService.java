package com.cos.soomgyo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.soomgyo.model.Community;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.repository.CommunityRepository;

@Service
public class CommunityService {
	@Autowired
	private CommunityRepository communityRepository;
	
	@Transactional
	public void 글쓰기(Community community, Users user) {
		community.setCount(0);
		community.setUsers(user);
		communityRepository.save(community);
	}
	@Transactional(readOnly = true)
	public List<Community> 글목록(){
		return communityRepository.findAll();
	}
	@Transactional(readOnly = true)
	public Community 글상세보기(int id) {
		return communityRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("글 상세보기 실패 : 아이디 찾을수없음");
				});
	}
	@Transactional
	public void 글삭제하기(int id) {
		System.out.println("삭제하기 호출");
		communityRepository.deleteById(id);
	}
}
