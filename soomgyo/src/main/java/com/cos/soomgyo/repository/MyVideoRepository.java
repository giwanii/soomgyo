package com.cos.soomgyo.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.soomgyo.model.Myvideo;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.model.Youtube;


public interface MyVideoRepository extends JpaRepository<Myvideo,Integer>{
	List<Myvideo> findByUsers(Users user);
	Optional<Myvideo> findByUsersAndYoutube(Users user,Youtube youtube);
	
	
	
}
