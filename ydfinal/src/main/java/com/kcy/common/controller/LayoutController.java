package com.kcy.common.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kcy.login.service.UserVo;


@Controller
public class LayoutController {

	@RequestMapping("/")
	public String dashboard(Model model, Authentication authentication) {
	    if (authentication != null) {
//	        UserVo userVo = (UserVo) authentication.getPrincipal();
//	        model.addAttribute("userName", userVo.getUsername());
	        // 여기서 굳이 값 넘겨줄 필요 없이 뷰단에서 타임리프로 불러오기 쌉가능
	        // <div sec:authentication="principal">로 userVo를 확인해보자!
	        // <div sec:authentication="principal.userName">
	        return "home";
	    }
	    return "login";
	}


}
