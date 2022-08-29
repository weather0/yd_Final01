package com.kcy.mentoring.career.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.mentoring.career.service.impl.CareerProfServiceImpl;

@Controller
public class CareerProfController {
	@Autowired(required = false)
	private CareerProfServiceImpl service;
	
	// 리스트 테스
	@GetMapping("/test1")
	public String test1() {
		return "pages/mentorMgr/career/careerList";
	}
	
	//학생 작성 폼
	@GetMapping("/test2")
	public String test2() {
		return "pages/mentorMgr/career/career";
	}
	
	//교수용 작성 
	@GetMapping("/test3")
	public String test3() {
		return "pages/mentorMgr/career/addCareer";
	}
	
	//교수 개인
	@ResponseBody 
	@RequestMapping("/careerSelectList/{id}")
	public String selectList(Model model, @PathVariable String id) {
		model.addAttribute("list", service.careerSelectList(id));
		return "pages/mentorMgr/career/careerList";
	}
	
	//불러오기
	//@ResponseBody 
	@RequestMapping("/careerList")
	public String list(Model model) {
		//model.addAttribute("list", service.careerList());
		
		return "pages/mentorMgr/career/careerList";
	}
	//교수 전체
	//@ResponseBody 
	@RequestMapping("/careerAllList")
	public String listAll(Model model) {
		model.addAttribute("list", service.careerList());
		
		return "ture";
	}
	
	
	
	
}
