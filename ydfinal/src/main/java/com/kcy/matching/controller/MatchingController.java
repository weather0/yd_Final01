package com.kcy.matching.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kcy.matching.mapper.MatchingMapper;

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
	MatchingMapper mapper;
	
	@RequestMapping("/matchingList")	
	public String matchingList(Model model) {
		model.addAttribute("matchingList", mapper.matchingList(null));
	return "pages/mentorMgr/matching/matchingList";
	}
	
	@RequestMapping("/matchingStd")
	public String matchingStd(Model model) {
		model.addAttribute("matchingStd", mapper.matchingStdList(null));
		model.addAttribute("matchingProf", mapper.matchingProfList(null));
	return "pages/mentorMgr/matching/matching";
	}


}
