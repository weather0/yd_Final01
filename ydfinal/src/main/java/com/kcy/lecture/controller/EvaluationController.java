package com.kcy.lecture.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kcy.lecture.service.EvaluationService;
import com.kcy.lecture.service.EvaluationVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class EvaluationController {

	
	private final EvaluationService EvaluationService;
	
	Logger logger = LoggerFactory.getLogger(EvaluationController.class);
	
	@GetMapping("/evaluationlist")
	public String EvaluationList(Model model) {
		model.addAttribute("evaluation",EvaluationService.EvaluationQuiz(null));
		return "pages/classMgr/EvaluationList";
	}
	
	@PostMapping("/evaluationinsert")
	public String EvaluationSubmission(EvaluationVO vo) {
		EvaluationService.EvaluationSubmission(vo);
		return "redirect:evaluationlist";
	}
	
	
	
}
