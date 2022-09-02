package com.kcy.scores.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kcy.scores.mapper.ScoresMapper;
import com.kcy.scores.service.ScoresService;
import com.kcy.scores.service.ScoresVo;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ScoresController {
	@Autowired
	ScoresMapper map;
	@Autowired
	ScoresService scoresService;
	
	// 교수 강좌 통해서 성적 페이지 이동
	@GetMapping("/scorelecturelist")
	public String scoreLectureList(Model model, ScoresVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("lecturelist", scoresService.lectureList(vo));
		return "pages/scoreMgr/prof/ScoreLectureList";
	}
	
	// 성적 입력 페이지
	@GetMapping("/scoreinsert")
	public String scoreInsertPage(@RequestParam String classId, Model model, ScoresVo vo, Principal principal) {
		model.addAttribute("lecturelist", classId);
		model.addAttribute("memberlist", map.scoresMemberList(vo));
		return "pages/scoreMgr/prof/ScoreInsert";
	}
	
	// 성적 입력 페이지 Proc
	@PostMapping("/socreInsert")
	public String scoreInsert(ScoresVo vo) {
		return null;
	}
	
	@GetMapping("/scoreview")
	public String scoreView(ScoresVo vo, Model model, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("stulist", map.stuScoreList(vo));
		return "pages/scoreMgr/scoreview";
	}
	
	@GetMapping("/classScore")
	public String classScore(ScoresVo vo, Model model, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("stulist", map.stuScoreList(vo));
		return "pages/scoreMgr/scoreview";
	}
	
}