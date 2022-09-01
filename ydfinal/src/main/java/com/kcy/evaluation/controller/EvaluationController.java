package com.kcy.evaluation.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.evaluation.service.EvaluationService;
import com.kcy.evaluation.service.EvaluationVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class EvaluationController {

	
	private final EvaluationService evaluationService;
	
	Logger logger = LoggerFactory.getLogger(EvaluationController.class);
	
	
	//교직원 평가하는 페이지 
	@GetMapping("/evaluationquestion/{classId}")
	public String evaluationQuestion(Model model, @PathVariable String classId,Principal principal,EvaluationVO vo) {
		vo.setUserId(principal.getName());
		model.addAttribute("classId",classId);
		model.addAttribute("ck",evaluationService.classMemberIdSelect(vo));
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
	
	//교수가 평가한 항목 값 json으로 보내는 부분
	@GetMapping("/evaluationconfirmationjson")
	@ResponseBody
	public HashMap<String, Object> evaluationConfirmationJson(Model model,EvaluationVO vo) {
		
		HashMap<String, Object> checkm = new HashMap<String, Object>();
		checkm.put("prof_r_result",evaluationService.evaluationConfirmation(vo));
		return checkm;
	}
	// 교수가 평가 결과 보는 페이지
	
	@GetMapping("/evaluationconfirmation")
	public String profEvaluationConfirmation(@RequestParam(value = "classId")String classId,Model model,EvaluationVO vo) {
		model.addAttribute("classId",classId);
		return "pages/classMgr/EvaluationConfirmation";
	}
	
	//교수가 평가 결과 항목을 보는 페이지
	
	@GetMapping("/evaluationconfirmationlist")
	public String profEvaluationConfirmationList(Model model,EvaluationVO vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("evalList",evaluationService.evaluationConfirmationList(vo));
		return "pages/classMgr/EvaluationConfirmationList";
	}
	
	
	
}
