package com.kcy.mentoring.career.controller;
/*작성자 : 정철우*/

import java.security.Principal;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.mentoring.career.service.CareerProfService;
import com.kcy.mentoring.career.vo.CareerProfVO;

@Controller
public class CareerProfController {
	@Autowired
	CareerProfService service;
	
	// 리스트 테스
	@RequestMapping("/test1")
	public String test1() {
		return "pages/mentorMgr/career/careerList";
	}
	
	//학생 작성 폼
	@RequestMapping("/test2")
	public String test2() {
		return "pages/mentorMgr/career/career";
	}
	
	//교수용 작성 
	@RequestMapping("/test3")
	@ResponseBody 
	public String test3(Model model, String id) {

		return "true";
	}
	
	//교수 개인
	@RequestMapping("/careerSelectList")
	//@ResponseBody 
	public String selectList(Model model,Principal principal) {
		String abc =  service.careerList(principal.getName());
		System.out.println(abc);
		if(abc.equals("xxx")) {
			model.addAttribute("yesno",abc);
			return "pages/mentorMgr/career/addCareer";
		} else {			
			ArrayList<CareerProfVO> ox = service.careerSelectList(principal.getName());
			model.addAttribute("listid", abc);			
			model.addAttribute("list", ox);			
			return "pages/mentorMgr/career/careerList";
		}
	
	}

	
	//불러오기
	public String list() {
	
		return "pages/mentorMgr/career/careerList";
	}
	
	

	
	
	// 입력
		@RequestMapping("/careerInsert")
		@ResponseBody
		public String carInsert(Model model, CareerProfVO vo) {
			service.careerInsert(vo);
			return "true";
		}
		// 교직원 리스트에 입력
		@RequestMapping("/careerListInsert")
		@ResponseBody
		public String carListInsert(Model model, String profId) {
			service.careerListInsert(profId);
			return profId;
		}
	
	// 수정
	@RequestMapping("/careerUpdateY")
	@ResponseBody
	public String updateY(Model model, String id) {
		service.careerUpdateY(id);
		return "true";
	}
	// 수정
	@RequestMapping("/careerUpdateN")
	@ResponseBody
	public String updateN(Model model, String id) {
		service.careerUpdateN(id);
		return "true";
	}
	
	
	//삭제
	@RequestMapping("/careerDelete")
	@ResponseBody
	public void dalete(Model model, String id) {
		service.careerDelete(id);
	}
	
	
	
	
	
	
}
