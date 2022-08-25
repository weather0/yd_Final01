package com.kcy.lecture.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kcy.lecture.mapper.CourseMapper;
import com.kcy.lecture.service.CourseVO;
import com.kcy.lecture.service.LectureClassVO;
import com.kcy.lecture.service.LectureService;
import com.kcy.lecture.service.LectureVO;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class LectureController {

	@Autowired CourseMapper mapper;
	private final LectureService LectureService;
	
	
	Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@GetMapping("/letureinsert")
	public String LetureInsertPage(LectureVO vo) {
		
		return "pages/classMgr/LetureInsert";
	}
	
	@PostMapping("/letureinsert")
	public String LetureInsert(LectureVO vo) {
		logger.info(vo.toString());
		LectureService.LectureInsert(vo);
		
		return "redirect:leturelist";
	}
	
	
	@ModelAttribute("course")
	public List<CourseVO> getDepartments(){
		
		
		return mapper.getCourse();
	}
	
	
	@GetMapping("/leturelist")
	public String letureList(Model model) {
		model.addAttribute("ltrList",LectureService.LectureList(null));
		return "pages/classMgr/LetureList";
	}
	
	
	@PostMapping("/letureupdate")
	public String letureUpdate(LectureVO vo) {
		LectureService.LectureUpdate(vo);
		return "redirect:leturelist";
	}
	
	@PostMapping("/letureinsertclass")
	public String LetureInsertClass(LectureClassVO vo) {
		logger.info(vo.toString());
		LectureService.LectureInsertClass(vo);
		
		return "redirect:leturelist";
	}

}
