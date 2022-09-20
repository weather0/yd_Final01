package com.kcy.scores.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.scores.mapper.ScoresMapper;
import com.kcy.scores.service.ScoresService;
import com.kcy.scores.service.ScoresVo;
import com.kcy.scores.serviceImpl.ScoresServiceImpl;

import lombok.RequiredArgsConstructor;

// 220910
@Controller
@RequiredArgsConstructor
public class ScoresController {
	@Autowired
	ScoresMapper map;
	@Autowired
	ScoresService scoresService;
	@Autowired
	ScoresServiceImpl Impl;
	
	
	// 성적 학생 리스트
	@GetMapping("/scorelecturelist")
	public String scoreLectureList(Model model, ScoresVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("lecturelist", scoresService.lectureList(vo));
		return "pages/scoreMgr/prof/scoreLectureList";
	}
	
	// 성적 입력
	@GetMapping("/scoreinsert")
	public String scoreInsertPage(@RequestParam String classId, Model model, ScoresVo vo, Principal principal) {
		model.addAttribute("memberlist", classId);
		model.addAttribute("memberlist", map.scoresMemberList(vo));
		model.addAttribute("count", map.scoresCtn(vo));
		model.addAttribute("standard", map.standardSelect(vo));
		model.addAttribute("attnCtn", map.AttnCtn(vo));
		return "pages/scoreMgr/prof/scoreInsert";
	}
	
	// 성적 입력 proc
	@ResponseBody
	@PostMapping("/scoreinsert")
	public String scoreInsert(ScoresVo vo, @RequestBody List<ScoresVo> list) {
		Impl.scoresAllInsert(list);
		return "true";
	}
	
	// 전체 성적 조회(학생)
	@GetMapping("/scoreview")
	public String scoreView(ScoresVo vo, Model model, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("stulist", map.stuScoreList(vo));
		return "pages/scoreMgr/scoreview";
	}
	
	// 학기별 세부 성적 조회(학생)
	@GetMapping("/classScore")
	public String classScore(ScoresVo vo, Model model, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("stulist", map.classScoreList(vo));
		return "pages/scoreMgr/classScoreview";
	}
	
	
}
