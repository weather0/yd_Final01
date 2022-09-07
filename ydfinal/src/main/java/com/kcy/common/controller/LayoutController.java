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
	        UserVo userVo = (UserVo) authentication.getPrincipal();
	        model.addAttribute("myName", userVo.getMyName());
	        // 여기서 굳이 값 넘겨줄 필요 없이 뷰단에서 타임리프로 불러오기 쌉가능
	        // <div sec:authentication="principal">로 UserServiceImpl에서 담았던 userVo를 확인해보자!
	        // <div sec:authentication="principal.userName">
	        // 근데 첨에 시큐리티 약속 필드명(username:아이디)과 우리필드명(username:이름)이 동음이의로 겹치는 바람에 모든게 어그러짐..
	        // 다른 필드는 문제없고 이름필드만! 문제가 생김ㅜ
	        return "home";
	    }
	    return "login";
	}


}
