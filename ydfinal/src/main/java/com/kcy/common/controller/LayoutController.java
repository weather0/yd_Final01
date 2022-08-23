package com.kcy.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class LayoutController {
	
	@GetMapping("")
	public ModelAndView main() {
		ModelAndView mdv = new ModelAndView();
//		mdv.setViewName("page/main");
		mdv.setViewName("index");
		return mdv;
	}

}
