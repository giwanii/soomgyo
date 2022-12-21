package com.cos.soomgyo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.cos.soomgyo.model.RoleType;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.repository.UserRepositroy;

@Service
public class UserService {
	@Autowired
	private UserRepositroy userRepository;
	
	@Autowired
	private BCryptPasswordEncoder encodeer;
	
	@Transactional
	public void 회원가입(Users user) {
		String rawPassword =user.getPassword();
		String encPassword = encodeer.encode(rawPassword);
		user.setPassword(encPassword);
		user.setRoles(RoleType.STUDENT);
		userRepository.save(user); //하나의 트랜젝션
	}

}


