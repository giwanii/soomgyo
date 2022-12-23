package com.cos.soomgyo.service;

import org.springframework.beans.factory.annotation.Autowired;
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
}

