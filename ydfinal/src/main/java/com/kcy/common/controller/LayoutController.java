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
	    // 로그인한 자는
	    if (authentication != null) {
	        // 근데 첨에 시큐리티 약속 필드명(username:아이디)과 우리필드명(username:이름)이 동음이의로 겹치는 바람에 모든게 어그러짐..
	        // 다른 필드는 문제없고 이름필드만! 문제가 생김ㅜ
//	        UserVo userVo = (UserVo) authentication.getPrincipal();
//	        model.addAttribute("myName", userVo.getMyName());
	        
	        // 추가수정
	        // 여기서 굳이 값 넘겨줄 필요 없이 뷰단에서 타임리프로 불러오기 쌉가능
	        // 다양한 방식으로 UserServiceImpl에서 담았던 userVo를 확인해보자!
	        //  1. <div sec:authentication="principal.userName"> → html요소로 간접 확인(=요소의 text로 값이 들어간다)
	        //  2. ${#authentication.principal.myName} → 값 자체
	        //  3. [[${#authentication.principal.myName}]] → 스크립트에서 바로 땡겨오기 가능
	        return "home"; // 홈으로
	    }
	    return "login"; // 손님은 로그인창으로
	}


}
