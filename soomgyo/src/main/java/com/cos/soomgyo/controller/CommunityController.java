package com.cos.soomgyo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.data.domain.Page;

import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.cos.soomgyo.config.auth.PrincipalDetail;
import com.cos.soomgyo.model.Community;
import com.cos.soomgyo.model.Youtube;
import com.cos.soomgyo.service.CommunityService;
import com.cos.soomgyo.service.ReplyService;
import com.cos.soomgyo.service.YoutubeService;


@Controller
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	@Autowired
	private ReplyService replyService;
	@Autowired
	private YoutubeService youtubeService; 

	
	@GetMapping({"","/"})
	public String index(Model model){
		Page<Youtube> firstPage = youtubeService.관련동영상();
		List<Youtube> pageContetns=firstPage.getContent();
		model.addAttribute("youtube", pageContetns );
		model.addAttribute("community", communityService.글목록());
		return "index";
		
	}
	@RequestMapping(value="/community", method= {RequestMethod.POST})
//	@PostMapping("/api/board")
	public String save(Community community, MultipartFile file, @AuthenticationPrincipal PrincipalDetail principal) throws Exception{
		System.out.println("api/board"+community.getTitle()+", " + file); 
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
	     community.setFilename(destinationFileName);
	     community.setFileOriName(sourFileName);
	     community.setFileurl(fileUrl);
	     communityService.글쓰기(community,principal.getUser());
	     return "redirect:/auth/community";
	}
	@GetMapping(value="/auth/images")
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
	@GetMapping("/auth/community")
	public String community(Model model) {
		model.addAttribute("community", communityService.글목록());
		return "community/community";
	}
	
	@GetMapping("/video/{id}")
	public String detailvideo(@PathVariable int id, Model model) {
		model.addAttribute("youtube", youtubeService.동영상상세보기(id));
		return "board/VideoDetail";
	}
	
	@GetMapping("/auth/community/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("community", communityService.글상세보기조회수(id));
		model.addAttribute("reply", replyService.replycount(id));
		return "community/CommunityDetail";
	}
	//게시글 수정하기
	@GetMapping("/community/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("community", communityService.글상세보기(id));
		return "community/CommunityUpdateForm";
	}
	
	@GetMapping("/saveboard")
	public String boardsaveForm() {
		return"community/CommunitySaveForm";
	}

}
