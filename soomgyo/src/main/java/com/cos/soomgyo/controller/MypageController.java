package com.cos.soomgyo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.cos.soomgyo.config.auth.PrincipalDetail;
import com.cos.soomgyo.model.RoleType;
import com.cos.soomgyo.model.Users;
import com.cos.soomgyo.service.CommunityService;
import com.cos.soomgyo.service.MypageService;
import com.cos.soomgyo.service.UserService;

@Controller
public class MypageController {
	@Autowired
	private MypageService mypageService;
	@Autowired
	private UserService userService;
	@Autowired
	private BCryptPasswordEncoder encodeer;
	@Autowired
    private AuthenticationManager authenticationManager;
	@Autowired
    private PasswordEncoder passwordEncoder;
	@Autowired
	private CommunityService communityService;
	
	
	@GetMapping("/mypage")
	public String mypage(Model model,@AuthenticationPrincipal PrincipalDetail principal) {
		
		if(principal.getUser().getRoles().equals(RoleType.STUDENT)) {
			model.addAttribute("community",communityService.????????????(principal.getUser()));
			model.addAttribute("lesson",mypageService.??????????????????(principal.getUser()));
			model.addAttribute("info",mypageService.????????????(principal.getUser()));
		}
		else {
			model.addAttribute("info",mypageService.????????????(principal.getUser()));
		
			model.addAttribute("lesson",mypageService.????????????(principal.getUser()));
		}
		return "user/mypage";
	}
	//????????????
	@RequestMapping(value="/member/delete/{id}", method= {RequestMethod.POST})
	public String deleteInfo(@PathVariable int id, HttpServletRequest request, Model model) {
		String RawRePwd = request.getParameter("password");	//????????? ????????? name=password??? ????????? RePwd??? ??????
		String RawRePwdCk = request.getParameter("pwd_check");
		String encPassword = encodeer.encode(RawRePwd);
		Users user=userService.findUser(id);
		if(RawRePwd.equals(RawRePwdCk)) {	// ????????? ????????? RePwd??? RePwdCk??? ?????????
			if(passwordEncoder.matches(RawRePwd, user.getPassword()) ) {	//RePwd??? user???????????? ?????? ??????????????? ?????????
				System.out.println("DB???????????? ??????"+user.getPassword());
				mypageService.????????????(id);		//???????????? ??????????????? ?????????
				model.addAttribute("msg", "?????????????????? ???????????????");
				return "redirect:/logout";
			}
			model.addAttribute("msg2", "????????? ??????????????? ???????????? ????????????.");
			return "user/mypage";
		}
		return "index";	//?????? ???????????? ??????
	}
	
	
	//???????????? ??????(????????? ?????? ????????? ??????)
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
	     mypageService.??????????????????(principal.getUser().getId(),user, file);
	    
	     Authentication authentication = authenticationManager.authenticate
	    		 (new UsernamePasswordAuthenticationToken(user.getUserid(),user.getPassword()));
	     SecurityContextHolder.getContext().setAuthentication(authentication);
	 
	     return "user/mypage";
	}
	//??????????????? ????????? ????????? ????????? ?????? ??????
	//?????????????????????
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
		
		@PostMapping("/member/lessonOk/{teacher}/{student}")
		public String ????????????(@PathVariable int student, @PathVariable int teacher) {

			mypageService.????????????(student, teacher);
			
			return "redirect:/mypage";
			 
		}

		@PostMapping("/member/lessonNo/{teacher}/{student}")
		public String ????????????(@PathVariable int student, @PathVariable int teacher) {
			mypageService.????????????(student, teacher);
			return "redirect:/mypage";
			
			
		}
			
}
