package com.kcy.matching.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.matching.service.MatchingChangeVO;
import com.kcy.matching.service.MatchingService;
import com.kcy.matching.service.MatchingVO;

/*
 * 작성자 : 
 * 작성일자 :
 * 내용 :
 * 수정일자 :
 * 수정내용 :
 */

@Controller
public class MatchingController {
	@Autowired
	MatchingService service;
	
	@RequestMapping("/matchingList")	
	public String matchingList(Model model) {
		model.addAttribute("matchingList", service.matchingList(null));
	return "pages/mentorMgr/matching/matchingList";
	}
	
	@RequestMapping("/matchingStd")
	public String matchingStd(Model model) {
		model.addAttribute("matchingStd", service.matchingStdList(null));
		model.addAttribute("matchingProf", service.matchingProfList(null));
	return "pages/mentorMgr/matching/matching";
	}
	
	@PostMapping("/matching")
	@ResponseBody
	public String matching(MatchingVO vo) {
		service.matching(vo);
		service.matchingStd(vo);
		return "1";
	}
	
	@RequestMapping("/matchingChange")
	public String matchingChangePage(MatchingChangeVO vo, Model model) {
		model.addAttribute("matchingProf", service.matchingProfList(null));
		return "pages/mentorMgr/matching/matchingChange";
	}
	
	@RequestMapping(value = "/matchingChangeOrder", method = RequestMethod.POST)
	public String matchingChangeOrder(MatchingChangeVO vo) {
		service.matchingChangeOrder(vo);
		return "pages/mentorMgr/matching/matchingChangeList";
	}
	
	@RequestMapping("/matchingChangeList")
	public String matchingChangeList(Model model) {
		model.addAttribute("matchingChange", service.matchingChangeList(null));
		return "pages/mentorMgr/matching/matchingChangeList";
	}
}
