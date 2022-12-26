package com.cos.soomgyo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

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
}

