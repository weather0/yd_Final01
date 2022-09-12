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

@Controller
@RequiredArgsConstructor
public class ScoresController {
	@Autowired
	ScoresMapper map;
	@Autowired
	ScoresService scoresService;
	@Autowired
	ScoresServiceImpl Impl;
	
	
	// 援먯닔 媛뺤쥖 �넻�빐�꽌 �꽦�쟻 �럹�씠吏� �씠�룞
	@GetMapping("/scorelecturelist")
	public String scoreLectureList(Model model, ScoresVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("lecturelist", scoresService.lectureList(vo));
		return "pages/scoreMgr/prof/scoreLectureList";
	}
	
	// �꽦�쟻 �엯�젰 �럹�씠吏�
	@GetMapping("/scoreinsert")
	public String scoreInsertPage(@RequestParam String classId, Model model, ScoresVo vo, Principal principal) {
		model.addAttribute("memberlist", classId);
		model.addAttribute("memberlist", map.scoresMemberList(vo));
		model.addAttribute("count", map.scoresCtn(vo));
		return "pages/scoreMgr/prof/scoreInsert";
	}
	
	// �꽦�쟻 �엯�젰 �럹�씠吏� Proc
	@ResponseBody
	@PostMapping("/scoreinsert")
	public String scoreInsert(ScoresVo vo, @RequestBody List<ScoresVo> list) {
		Impl.scoresAllInsert(list);
		return "true";
	}
	
	// �닔媛� �꽦�쟻 �쟾泥� �늻怨�
	@GetMapping("/scoreview")
	public String scoreView(ScoresVo vo, Model model, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("stulist", map.stuScoreList(vo));
		return "pages/scoreMgr/scoreview";
	}
	
	// �븰湲곕퀎 �꽦�쟻 議고쉶 �럹�씠吏�
	@GetMapping("/classScore")
	public String classScore(ScoresVo vo, Model model, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("stulist", map.classScoreList(vo));
		return "pages/scoreMgr/classScoreview";
	}
	
	
}
