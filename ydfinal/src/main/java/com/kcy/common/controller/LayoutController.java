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
	        model.addAttribute("userName", userVo.getUserName());
	        return "home";
	    }
	    return "login";
	}


}
