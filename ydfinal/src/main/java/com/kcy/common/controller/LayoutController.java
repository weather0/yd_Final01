package com.kcy.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * 작성자:
 * 작성일자:
 * 내용:
 * 수정일자:
 * 수정내용:
 */

@Controller
public class LayoutController {

	@RequestMapping("/")
	public String dashboard(Model model) {
		return "home";
	}

	@RequestMapping("/studentChangeApply")
	public String studentChangeApply(Model model) {
//        model.addAttribute("active","click_studentInfo");
		return "pages/userMgr/studentChangeApply";
	}



}
