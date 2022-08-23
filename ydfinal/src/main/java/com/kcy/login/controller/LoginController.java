package com.kcy.login.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kcy.login.mapper.UserService;
import com.kcy.login.service.UserVo;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class LoginController {
	private final UserService userService;
	
    @GetMapping
    public String root() {
        return "redirect:/login";
    }
    
    @GetMapping("/login")
    public String login(Model model){
        model.addAttribute("active","click_login");
        return "login";
    }
    
    @GetMapping("/access_denied")
    public String accessDenied() {
        return "access_denied";
    }
    
    @GetMapping("/user_access")
    public String userAccess(Model model, Authentication authentication) {
        //Authentication 객체를 통해 유저 정보를 가져올 수 있다.
        UserVo userVo = (UserVo) authentication.getPrincipal();  //userDetail 객체를 가져옴
        model.addAttribute("info", userVo.getUserId() +"의 "+ userVo.getUsername()+ "님");      //유저 아이디
        return "user_access";
    }
}
