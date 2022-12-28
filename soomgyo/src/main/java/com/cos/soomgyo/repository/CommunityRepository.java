package com.cos.soomgyo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.soomgyo.model.Community;

public interface CommunityRepository extends JpaRepository<Community, Integer>{
	List<Community> findByNoticeOrderByCreateDateDesc(int notice);

}
