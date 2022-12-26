package com.cos.soomgyo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.soomgyo.model.Community;
import com.cos.soomgyo.model.Youtube;
import com.cos.soomgyo.repository.youtubeRepository;

@Service
public class YoutubeService {
	
	@Autowired
	youtubeRepository youtuberepository;
	
	public void 영상저장(Youtube youtube){
		
		youtuberepository.save(youtube);
	}
	
	public Page<Youtube> 관련동영상(){
		int num = (int)(Math.random() * 16);
		Pageable firstPageableWithTwoElements = PageRequest.of(num, 6);
		return youtuberepository.findAll(firstPageableWithTwoElements);
	}

	public Youtube 동영상상세보기(int id) {
		
		return youtuberepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("영상 상세보기 실패 : 아이디 찾을수없음");
				});
	}
}

