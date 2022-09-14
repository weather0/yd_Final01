package com.kcy.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
    
    // 비밀번호 찾기 페이지 이동
    @GetMapping("/findPw")
    public String findPwPage() {
    	return "findPw";
    }
    
    // 비밀번호 찾기 페이지 이동
    @GetMapping("/changePw")
    public String changePwPage(String userEmail, Model model) {
    	System.out.println("!!!!!!!!!!!!!" + userEmail);
    	map.userChangePw(userEmail);
		model.addAttribute("userInfo", map.userChangePw(userEmail));
    	return "true";
    }
    
    @GetMapping("/check/findPw")
    @ResponseBody
    public UserVo checkFindPw(String userEmail, String myName) {
    	map.findUserByUserId(userEmail);
    	System.out.println("!!!!!!!!!!!!!!!!" + myName + ", " + userEmail);
    	return map.findUserByUserId(userEmail);
    }
    
//    // 비밀번호 찾기
//    @GetMapping("/check/findPw")
//    public @ResponseBody Map<String, Boolean> userfindPw(String userEmail, String userName) {
//		Map<String, Boolean> json = new HashMap<>();
//		boolean pwFindCheck = userService.userEmailCheck(userEmail, userName);
//		System.out.println(pwFindCheck);
//		json.put("check", pwFindCheck);
//		return json;
//
//    }
    
    // 비밀번호 이메일
    @GetMapping("/findPw/sendEmail")
    @ResponseBody 
    public void sendEmail(@Param("userEmail") String userEmail, @Param("myName") String myName, @Param("pw") String pw) {
    	MailDto dto = sendEmailService.createMailAndChangePassword(userEmail, myName);
    	System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!~~" + userEmail + ", " + myName);
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
