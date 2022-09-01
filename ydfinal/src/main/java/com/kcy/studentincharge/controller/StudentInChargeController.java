package com.kcy.studentincharge.controller;

import java.security.Principal;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.kcy.studentincharge.mapper.ClassIdMapper;
import com.kcy.studentincharge.service.ClassIdVO;
import com.kcy.studentincharge.service.StudentInChargeService;
import com.kcy.studentincharge.service.StudentInChargeVO;

@Controller
public class StudentInChargeController {
	
	Logger logger = LoggerFactory.getLogger(StudentInChargeController.class);
	@Autowired  StudentInChargeService service;
	@Autowired  ClassIdMapper classId;
	
	@ModelAttribute("classId")
	public List<ClassIdVO> getDepartments(Principal principal,ClassIdVO vo){
		vo.setUserId(principal.getName());
		return classId.selectClassId(vo);
	}
	
	
	@GetMapping("/studentinchargelist")
	public String studentInChargeList(Model model, Principal principal, StudentInChargeVO vo ) {
		vo.setUserId(principal.getName());
		model.addAttribute("stulist",service.studentSelectList(vo));
		return "pages/classMgr/StudentInChargeList";
	}
	
	@GetMapping("/studentSelect")
	public String studentSelect(Model model, Principal principal, StudentInChargeVO vo ) {
		vo.setUserId(principal.getName());
		model.addAttribute("stulist",service.studentSelect(vo));
		return "pages/classMgr/StudentInChargeList";
	}

}
