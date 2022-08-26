package com.kcy.login.sequrity;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SecurityController {
	@GetMapping("/username")
	@ResponseBody
	public String currentUserName(Principal principal) {
		return principal.getName();
	}
	
	@GetMapping("/user")
	@ResponseBody
	public String userName(Authentication authentication) {
		return authentication.getName();
	}
}
