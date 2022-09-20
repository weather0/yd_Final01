package com.kcy.schedule.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.schedule.notice.mapper.NoNoticeMapper;
import com.kcy.schedule.notice.service.NoNoticeService;
import com.kcy.schedule.notice.service.NoNoticeVo;


@Controller
public class NoNoiceController {
	
	@Autowired
	NoNoticeMapper map;
	@Autowired
	NoNoticeService noticeService;

	
	
	// 공지 등록
	@GetMapping("/notice/noticeInsert")
	public String NoticeInsertPage() {
		return "/pages/scheduleMgr/notice/noticeInsert";
	}
	
	// 공지 등록 프로그램
	@PostMapping("/notice/noticeInsert")
	@ResponseBody 
	public String NoticeInsert( NoNoticeVo vo){
		noticeService.noticeInsert(vo);
		return "true111";
	}
	
	// 공지 수정
	@GetMapping("/notice/noticemodify")
	public String NoticeModifyPage(Model model, String NoticeId) {
		model.addAttribute("noticeList", noticeService.noticeView(NoticeId));
		return "/pages/scheduleMgr/notice/noticemodify";
	}
	
	// 공지 수정 프로그램
	@PostMapping("/notice/noticemodify")
	@ResponseBody 
	public String NoticeModify(NoNoticeVo vo){
		noticeService.noticeModify(vo);
		return "true111";
	}
	
	// 공지 삭제 프로그램
	@PostMapping("/notice/noticeDelete")
	@ResponseBody 
	public String noticeDelete(NoNoticeVo vo){
		noticeService.noticeDelete(vo);
		return "true111";
	}
	
	// 공지 목록
	@GetMapping("/notice/noticeList")
	public String noticelist(Model model) {
		model.addAttribute("noticeList", noticeService.noticeList());
		return "/pages/scheduleMgr/notice/noticeList";
	}
	
	// 공지 목록2
	@PostMapping("/notice/noticeList")
	@ResponseBody 
	public List<NoNoticeVo> noticelist2() {
		return noticeService.noticeList();
	}
	
	// 공지 상세 보기
	@GetMapping("/notice/noticeView")
	public String noticeview(String NoticeId, Model model) {
		NoNoticeVo vo = noticeService.noticeView(NoticeId);
		model.addAttribute("noticeList", vo);
		return "/pages/scheduleMgr/notice/noticeView";
	}
	
}
