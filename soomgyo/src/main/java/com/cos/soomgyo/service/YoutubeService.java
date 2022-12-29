package com.cos.soomgyo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.soomgyo.model.Myvideo;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.model.Youtube;
import com.cos.soomgyo.repository.MyVideoRepository;
import com.cos.soomgyo.repository.youtubeRepository;

@Service
public class YoutubeService {
	
	@Autowired
	youtubeRepository youtuberepository;
	@Autowired
	MyVideoRepository myVideoRepository;
	
	public void 영상저장(Youtube youtube){
		
		youtuberepository.save(youtube);
	}
	
	public Page<Youtube> 관련동영상(){
		int num = (int)(Math.random() * 16);
		Pageable firstPageableWithTwoElements = PageRequest.of(num, 6);
		return youtuberepository.findAll(firstPageableWithTwoElements);
	}
	public List<Youtube> 모든동영상(){
		return youtuberepository.findAll();
	}

	public Youtube 동영상상세보기(Youtube youtube) {
		return youtuberepository.findById(youtube.getId())
				.orElseThrow(()->{
					return new IllegalArgumentException("영상 상세보기 실패 : 아이디 찾을수없음");
				});
	}
	public void 메모저장(Myvideo myvideo,Users users, Youtube youtube) {
		System.out.println("메모저장");
		myvideo.setUsers(users);
		myvideo.setYoutube(youtube);
		myVideoRepository.save(myvideo);
		
	}
	public List<Myvideo> 메모보기(Users user){
			return myVideoRepository.findByUsers(user);
	}
	public int 좋아요(Users user,Youtube youtube) {
		return myVideoRepository.videolike(user, youtube);
	}
	@Transactional
	public void 메모수정(Myvideo myvideo,Users user,Youtube youtube) {
		Myvideo mv = myVideoRepository.findByUsersAndYoutube(user,youtube).orElseThrow(()->{
			return new IllegalArgumentException("메모저장 실패 아이디 못찾음");
		});
		mv.setMemo(myvideo.getMemo());
	}
	public void 관심확인(Myvideo myvideo,Users user,Youtube youtube) {
		boolean mv = myVideoRepository.existsByUsersAndYoutube(user,youtube);
		if(mv) {
			Myvideo mv1 = myVideoRepository.findByUsersAndYoutube(user,youtube).orElseThrow(()->{
				return new IllegalArgumentException("아이디 못찾음");
			});
			if(mv1.getVideolikes()==0) {
				mv1.setVideolikes(1);
			}
			else {
				mv1.setVideolikes(0);
			}
			
		}
		else {
			myvideo.setUsers(user);
			myvideo.setYoutube(youtube);
			myvideo.setVideolikes(1);
			myVideoRepository.save(myvideo);
			
		}
		
		
		
	}
	
}

