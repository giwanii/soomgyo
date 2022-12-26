package com.cos.soomgyo.controller.api;

import java.io.File;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cos.soomgyo.config.auth.PrincipalDetail;
import com.cos.soomgyo.dto.ResponseDto;
import com.cos.soomgyo.model.Community;
import com.cos.soomgyo.model.Files;
import com.cos.soomgyo.service.CommunityService;
import com.cos.soomgyo.service.FileService;

@RestController
public class CommunityApiController {
	@Autowired
	private CommunityService communityService;
	@Autowired
	private FileService fileService;
	
	@RequestMapping(value="/api/board", method= {RequestMethod.POST})
//	@PostMapping("/api/board")
	public ResponseDto<Integer> save(Community community, MultipartFile file, @AuthenticationPrincipal PrincipalDetail principal) throws Exception{
		System.out.println("api/board"+community.getTitle()+", " + file); 
		String sourFileName = file.getOriginalFilename();
		 String sourFileNameExtension = FilenameUtils.getExtension(sourFileName).toLowerCase();
		 File destinationFile;
	     String destinationFileName;
	     String fileUrl = "C:\\image\\";
	     do { 
 			destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourFileNameExtension; 
 			destinationFile = new File(fileUrl + destinationFileName); 
		 } while (destinationFile.exists());
	     destinationFile.getParentFile().mkdirs();
	     file.transferTo(destinationFile);
	     community.setFilename(destinationFileName);
	     community.setFileOriName(sourFileName);
	     community.setFileurl(fileUrl);
	     
	     communityService.글쓰기(community,principal.getUser());
	     return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	@DeleteMapping("/api/board/{id}")
	public ResponseDto<Integer> deleteById(@PathVariable int id){
		communityService.글삭제하기(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	@PutMapping("/api/board/{id}")
	public ResponseDto<Integer> update(@PathVariable int id, @RequestBody Community community){
		communityService.글수정하기(id,community);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
}
