package com.kcy.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.login.mapper.MailDto;
import com.kcy.login.mapper.SendEmailService;
import com.kcy.login.mapper.UserMapper;
import com.kcy.login.mapper.UserService;
import com.kcy.login.service.UserVo;

import lombok.RequiredArgsConstructor;
// 황하경 220831
@Controller
@RequiredArgsConstructor
public class LoginController {
	
	private final UserService userService;
	private final SendEmailService sendEmailService;
	@Autowired
	UserMapper map;
	@Autowired
	BCryptPasswordEncoder password;
    
	// 로그인
    @GetMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error, @RequestParam(value = "exception", required = false) String exception, Model model){
        
    	model.addAttribute("error", error);
    	model.addAttribute("exception", exception);
    	
    	return "login";
    }
    
    // 비밀번호 찾기 페이지 이동
    @GetMapping("/findPw")
    public String findPwPage() {
    	return "findPw";
    }
    
    // 비밀번호 변경 페이지 이동
    @GetMapping("/changePw")
    public void changePwPage(UserVo vo, Model model, @Param("userEmail") String userEmail) {
    	model.addAttribute("info", map.userChangePw(userEmail));
    	System.out.println("userEmail" + "!!!!!!" + userEmail);
    }
    
    // 비밀번호 변경 프로그램
    @GetMapping("/changePw/proc")  
    @ResponseBody
    public void changePwPageProc(@Param("userEmail") String userEmail, @Param("newPw") String newPw) {
    	UserVo vo = new UserVo();
    	System.out.println(newPw);
    	String nPw = password.encode(newPw);
    	vo.setNewPw(nPw);
    	vo.setUserEmail(userEmail);
    	map.changePwUpdate(vo);
    }
    
    // 비밀번호 이메일 전송 proc
    @GetMapping("/check/findPw")
    @ResponseBody
    public UserVo checkFindPw(String userEmail, String myName) {
    	return map.findUserByUserId(userEmail);
    }
    
    // 비밀번호 이메일 발송 proc
    @GetMapping("/findPw/sendEmail")
    @ResponseBody 
    public void sendEmail(@Param("userEmail") String userEmail, @Param("myName") String myName, @Param("pw") String pw) {
    	MailDto dto = sendEmailService.createMailAndChangePassword(userEmail, myName);
    	sendEmailService.mailSend(dto);
    }

}
