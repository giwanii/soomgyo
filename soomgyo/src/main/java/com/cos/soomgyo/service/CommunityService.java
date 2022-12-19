package com.cos.soomgyo.service;

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
}
