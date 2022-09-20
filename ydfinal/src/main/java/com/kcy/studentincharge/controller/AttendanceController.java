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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.studentincharge.mapper.ClassIdMapper;
import com.kcy.studentincharge.service.AttendanceService;
import com.kcy.studentincharge.service.AttendanceVO;
import com.kcy.studentincharge.service.ClassIdVO;
import com.kcy.studentincharge.service.Impl.AttendanceServiceImpl;

@Controller
public class AttendanceController {
	
	Logger logger = LoggerFactory.getLogger(AttendanceController.class);

	@Autowired AttendanceService service;
	@Autowired  ClassIdMapper classId;
	@Autowired AttendanceServiceImpl serviceImpl;
	
	//교수가 개설한 강좌 코드
	@ModelAttribute("classId")
	public List<ClassIdVO> getDepartments(Principal principal,ClassIdVO vo){
		vo.setUserId(principal.getName());
		return classId.selectClassId(vo);
	}
	
	
	//교수가 갖고 있는 강좌를 보여주는 부분
	@GetMapping("/attendanceSelect")
	public String attendanceSelect() {
	
		return "pages/classMgr/prof/AttendanceSelect";
	}
	
	//자신이 갖고 있는 강좌에 학생들을 보여주는 부분
	@GetMapping("/attendancelist")
	public String attendanceList(@RequestParam(value = "classId")String classId, AttendanceVO vo, Model model, Principal principal) {
		
			vo.setUserId(principal.getName());
			model.addAttribute("classId",classId);
			model.addAttribute("list",service.attendanceList(vo));
			
			
		return "pages/classMgr/prof/AttendanceList";
	}
	
	//출결을 추가하는 부분
	@PostMapping("/attendanceInsert")
	@ResponseBody
	public String attendanceInsert(@RequestBody List<AttendanceVO>list) {
		serviceImpl.attendanceInsertAll(list);
		return "true";
	}
	
	
	

}
