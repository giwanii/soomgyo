package com.cos.soomgyo.service;

import javax.transaction.Transactional;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cos.soomgyo.config.auth.PrincipalDetail;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.repository.UserRepositroy;

@Service
public class MypageService {
	@Autowired
	private UserRepositroy userRepositroy;
	@Autowired
	private BCryptPasswordEncoder encodeer;

	@Transactional
	public void 회원정보수정(int id, Users user, MultipartFile file) {
		System.out.println("회원정보수정 비밀번호 " + user.getPassword());
		Users persistance = userRepositroy.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("회원정보 수정 실패");
		});
		String rawPassword = user.getPassword();
		String encPassword = encodeer.encode(rawPassword);
		persistance.setPassword(encPassword);
		persistance.setPhone(user.getPhone());
		persistance.setCategory(user.getCategory());
		System.out.println(user.getProfilefilename());
		if (user.getProfilefilename() != null) {
			persistance.setProfilefilename(user.getProfilefilename());
			persistance.setProfilefileOriName(user.getProfilefileOriName());
			persistance.setProfilefileurl(user.getProfilefileurl());
		}
	}
	
	@Transactional
	public void 회원탈퇴(int id) {
		userRepositroy.deleteById(id);
	}
}
