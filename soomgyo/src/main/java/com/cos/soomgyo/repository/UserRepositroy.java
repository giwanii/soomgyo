package com.cos.soomgyo.repository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.soomgyo.model.Users;



public interface UserRepositroy extends JpaRepository<Users,Integer>{
	Optional<Users> findByUserid(String userid);
}
