package com.cos.soomgyo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.cos.soomgyo.config.auth.PrincipalDetail;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.service.MypageService;

@Controller
public class MypageController {
	@Autowired
	private MypageService mypageService;
	
	@Autowired
    private AuthenticationManager authenticationManager;
	
	
	@GetMapping("/mypage")
	public String index() {
		return "user/mypage";
	}
	
	//회원정보 수정(프로필 사진 이미지 저장)
	@RequestMapping(value="/InfoModify", method= {RequestMethod.POST})
	public String infoUpdate(Users user, MultipartFile file, @AuthenticationPrincipal PrincipalDetail principal)throws Exception{
		 String sourFileName = file.getOriginalFilename();
		 String sourFileNameExtension = FilenameUtils.getExtension(sourFileName).toLowerCase();
		 File destinationFile;
	     String destinationFileName;
	     String fileUrl = "C:\\images\\";
	     do { 
			destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourFileNameExtension; 
			destinationFile = new File(fileUrl + destinationFileName); 
		 } while (destinationFile.exists());
	     destinationFile.getParentFile().mkdirs();
	     file.transferTo(destinationFile);
	     user.setProfilefilename(destinationFileName);
	     user.setProfilefileOriName(sourFileName);
	     user.setProfilefileurl(fileUrl);
	     mypageService.회원정보수정(principal.getUser().getId(),user, file);
	    
	     Authentication authentication = authenticationManager.authenticate
	    		 (new UsernamePasswordAuthenticationToken(user.getUserid(),user.getPassword()));
	     SecurityContextHolder.getContext().setAuthentication(authentication);
	 
	     return "user/mypage";
	}
	//마이페이지 프로필 이미지 보이는 경로 설정
	//이미지경로설정
		@GetMapping(value="/auth/img")
		public ResponseEntity<Resource> display(@Param("filename") String filename){
			String path="C:\\images\\";
			Resource resource = new FileSystemResource(path+filename);
			if(!resource.exists()) {
				return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
			}
			HttpHeaders header = new HttpHeaders();
			Path filePath = null;
			try {
				filePath=Paths.get(path+filename);
				header.add("Content-Type", Files.probeContentType(filePath));
			}catch(IOException e){
				e.printStackTrace();
			}
			return new ResponseEntity<Resource>(resource, header, HttpStatus.OK);

		}
}
