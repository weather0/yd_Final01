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

@Controller
@RequiredArgsConstructor
public class LoginController {
	private final UserService userService;
	private final SendEmailService sendEmailService;
    
    @GetMapping("/login")
    public String login(){
        return "login";
    }
    
    @GetMapping("/denied")
    public String denied() {
    	return "denied";
    }
    
    @GetMapping("/access")
    public String userAccess(Model model, Authentication authentication) {
        //Authentication 객체를 통해 유저 정보를 가져올 수 있다.
        UserVo userVo = (UserVo) authentication.getPrincipal();  //userDetail 객체를 가져옴
        // model.addAttribute("info", userVo.getUserId() +"의 "+ userVo.getUsername()+ "님 " + userVo.getUserType() + "권한");      //유저 아이디
        return "";
    }
    
    
    
    @GetMapping("/check/findPw")
    public @ResponseBody Map<String, Boolean> userfindPw(String userEmail, String userName) {
    		Map<String, Boolean> json = new HashMap<>();
    		boolean pwFindCheck = userService.userEmailCheck(userEmail, userName);
    		
    		System.out.println(pwFindCheck);
    		json.put("check", pwFindCheck);
    		return json;
    }
    
    @PostMapping("/check/findPw/sendEmail")
    public @ResponseBody void sendEmail(String userEmail, String userName) {
    	MailDto dto = sendEmailService.createMailAndChangePassword(userEmail, userName);
    	sendEmailService.mailSend(dto);
    }
}
