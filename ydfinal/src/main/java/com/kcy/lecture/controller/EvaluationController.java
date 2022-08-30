package com.kcy.lecture.controller;

import java.security.Principal;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kcy.lecture.service.EvaluationService;
import com.kcy.lecture.service.EvaluationVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class EvaluationController {

	
	private final EvaluationService evaluationService;
	
	Logger logger = LoggerFactory.getLogger(EvaluationController.class);
	
	@GetMapping("/evaluationlist/{classId}")
	public String EvaluationList(Model model, @PathVariable String classId) {
		model.addAttribute("classId",classId);
		model.addAttribute("evaluation",evaluationService.evaluationQuiz(classId));
		return "pages/classMgr/EvaluationList";
	}
	
	@PostMapping("/evaluationinsert")
	public String EvaluationSubmission(@RequestParam Map<String,String> map) {
		
		evaluationService.evaluationSubmission(map);
		
		return "redirect:evaluationtotallist";
	}
	
	@GetMapping("/evaluationtotallist")
	public String EvaluationTotalList(Model model,EvaluationVO vo,Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("eval",evaluationService.evaluationSelectList(vo));
		return "pages/classMgr/EvaluationSelectList";
	}
	
	
}
