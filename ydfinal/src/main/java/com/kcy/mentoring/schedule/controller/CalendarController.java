package com.kcy.mentoring.schedule.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kcy.mentoring.schedule.service.impl.CalenServiceImpl;

@Controller
@RequestMapping("/schedule")
public class CalendarController {
	@Autowired(required = false)
	private CalenServiceImpl service;

	@GetMapping("/schedule")
	public String list1() {
		return "pages/mentorMgr/schedule/schedule";
	}
	
	@GetMapping(params = "method=list")
	public String list() {
		return "pages/mentorMgr/schedule/schedule";
	}

	@GetMapping(params = "method=data")
	public String data(Model d) {
		d.addAttribute("list", service.calenList());
		return "pageJsonReport";
	}
	
	
}
