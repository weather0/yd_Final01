package com.kcy.matching.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.bill.service.MajorbVO;
import com.kcy.matching.service.MatchingChangeVO;
import com.kcy.matching.service.MatchingListVO;
import com.kcy.matching.service.MatchingProfVO;
import com.kcy.matching.service.MatchingService;
import com.kcy.matching.service.MatchingStdVO;
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
	
	//모든 매칭 이력 확인
	@RequestMapping("/matchingList")
	public String matchingList(MatchingListVO vo) {
	return "pages/mentorMgr/matching/matchingList";
	}
	
	@RequestMapping("/matchingListInfo")	
	public String matchingListInfo(MatchingListVO vo, Model model) {
		model.addAttribute("matchingList", service.matchingList(vo));
	return "pages/mentorMgr/matching/matchingList";
	}
	
	@ModelAttribute("majorb")
	public List<MajorbVO> majorbList(MajorbVO vo){
		return service.majorbList(vo);
	}
	
	//지도교수 매칭 페이지 
	@RequestMapping("/matchingStd")
	public String matchingStd(MatchingStdVO svo, MatchingProfVO pvo, Model model) {		
	return "pages/mentorMgr/matching/matching";
	}
	
	//지도교수 매칭 상세
	@RequestMapping(value = "/matchingStdInfo", method = RequestMethod.POST)
	public String matchingStdInfo(MatchingStdVO svo, MatchingProfVO pvo, Model model) {
		model.addAttribute("matchingStd", service.matchingStdList(svo));
		model.addAttribute("matchingProf", service.matchingProfList(pvo));
	return "pages/mentorMgr/matching/matching";
	}
	
	//지도교수 매칭 상세
	@RequestMapping(value = "/matchingProfInfo", method = RequestMethod.POST)
	public String matchingProfInfo(MatchingStdVO svo, MatchingProfVO pvo, Model model) {
		model.addAttribute("matchingStd", service.matchingStdList(svo));
		model.addAttribute("matchingProf", service.matchingProfList(pvo));
	return "pages/mentorMgr/matching/matching";
	}
	
	//지도교수 매칭
	@PostMapping("/matching")
	@ResponseBody
	public String matching(MatchingVO vo, @RequestParam(value="Id") List<String> id, @RequestParam(value="userId") String userId) {
		System.out.println(userId);
		System.out.println(id.size());
		vo.setUserId(userId);
		vo.setId(id);
		service.matching(vo);
		service.matchingStd(vo);
		return "1";
	}
	
	//지도교수 변경 신청 페이지
	@RequestMapping("/matchingChange")
	public String matchingChangePage(MatchingChangeVO vo, Model model,  Principal principal, MatchingStdVO svo, MatchingChangeVO cvo) {
		model.addAttribute("matchingProf", service.matchingProfList(null));
		svo.setUserId(principal.getName());
		cvo.setStuId(principal.getName());
		model.addAttribute("matchingName", service.matchingName(svo));
		model.addAttribute("changeProgress", service.changeProgress(cvo));
		return "pages/mentorMgr/matching/matchingChange";
	}
	
	//지도교수 변경 신청
	@RequestMapping(value = "/matchingChangeOrder", method = RequestMethod.POST)
	public String matchingChangeOrder(MatchingChangeVO vo, MatchingStdVO svo) {
		service.matchingChangeOrder(vo);
		service.changeStatus(svo);
		return "redirect:matchingChange";
	}
	
	//지도교수 변경 신청 취소
	@PostMapping("/changeCancel")
	@ResponseBody
	public String changeCancel(MatchingChangeVO vo, MatchingStdVO svo) {
		service.changeCancel(vo);
		service.changeStatus(svo);
		return "1";
	}
	
	//지도교수 변경 신청자 리스트
	@RequestMapping("/matchingChangeList")
	public String matchingChangeList(Model model) {
		model.addAttribute("matchingChange", service.matchingChangeList(null));
		return "pages/mentorMgr/matching/matchingChangeList";
	}
	
	//지도교수 변경 승인
	@PostMapping("/changeMatching")
	@ResponseBody
	public String changeMatching(MatchingVO vo, MatchingStdVO svo) {
		service.matching(vo);
		service.matchingStd(vo);
		service.matchingType(vo);
		service.matchingYes(vo);
		service.changeStatus(svo);
		return "1";
	}
	
	//지도교수 변경 거부
	@PostMapping("/changeReject")
	@ResponseBody
	public String changeReject(MatchingChangeVO vo, MatchingStdVO svo) {
		service.matchingNo(vo);
		service.changeStatus(svo);
		return "1";
	}
	
}
