package com.kcy.login.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.login.mapper.MailDto;
import com.kcy.login.mapper.SendEmailService;
import com.kcy.login.mapper.UserService;
import com.kcy.login.service.UserVo;

import lombok.RequiredArgsConstructor;
// 황하경 220831
@Controller
@RequiredArgsConstructor
public class LoginController {
	private final UserService userService;
	private final SendEmailService sendEmailService;
    
	// 로그인
    @GetMapping("/login")
    public String login(){
        return "login";
    }
    // 로그인 실패
    @GetMapping("/denied")
    public String denied(UserVo vo) {
    	return "denied";
    }
    // 로그인 성공
    @GetMapping("/access")
    public String userAccess(Model model, Authentication authentication) {
        //Authentication 객체를 통해 유저 정보를 가져올 수 있다.
        UserVo userVo = (UserVo) authentication.getPrincipal();  //userDetail 객체를 가져옴
        model.addAttribute("info", userVo.getUserId() +"의 "+ userVo.getUsername()+ "님 " + userVo.getUserType() + "권한");      //유저 아이디
        return "";
    }
    
    // 비밀번호 찾기
    @GetMapping("/check/findPw")
    public @ResponseBody Map<String, Boolean> userfindPw(String userEmail, String userName) {
    		Map<String, Boolean> json = new HashMap<>();
    		boolean pwFindCheck = userService.userEmailCheck(userEmail, userName);
    		System.out.println(pwFindCheck);
    		json.put("check", pwFindCheck);
    		return json;
    }
    
    // 비밀번호 이메일
    @PostMapping("/check/findPw/sendEmail")
    public @ResponseBody void sendEmail(String userEmail, String userName) {
    	MailDto dto = sendEmailService.createMailAndChangePassword(userEmail, userName);
    	sendEmailService.mailSend(dto);
    }
    
    // 행정
    
    // 학생
    @GetMapping("/userMgr/stu")
    public String stu() {
    	return "pages/userMgr/stu/stu";
    }
    
    // 교수
	@GetMapping("/userMgr/prof")
	public String prof() {
		return "pages/userMgr/prof/prof";
	}
    
}
