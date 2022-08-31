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
	
	
	//교직원 평가하는 페이지 
	@GetMapping("/evaluationquestion/{classId}")
	public String evaluationQuestion(Model model, @PathVariable String classId) {
		model.addAttribute("classId",classId);
		model.addAttribute("evaluation",evaluationService.evaluationQuestion(classId));
		return "pages/classMgr/EvaluationList";
	}
	
	//교직원 평가한 결과 제출
	@PostMapping("/evaluationinsert")
	public String evaluationResultInsert(@RequestParam Map<String,String> map) {
		
		evaluationService.evaluationResultInsert(map);
		
		return "redirect:profevaluationlist";
	}
	
	//내가 수강하고있는 강좌에 맞는 평가지를 보여주는 페이지
	@GetMapping("/profevaluationlist")
	public String profEvaluationList(Model model,EvaluationVO vo,Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("eval",evaluationService.profEvaluationList(vo));
		return "pages/classMgr/EvaluationSelectList";
	}
	
	
}
