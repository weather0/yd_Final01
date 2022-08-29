package com.kcy.notice.controller;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kcy.file.test.FileDto;
import com.kcy.notice.mapper.NoticeMapper;
import com.kcy.notice.service.NoticeService;
import com.kcy.notice.service.NoticeVo;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class NoticeController {
	
	@Autowired
	NoticeMapper map;
	@Autowired
	NoticeService noticeService;
	
	@GetMapping("/noticeinsert")
	public String NoticeInsertPage() {
		return "/pages/classMgr/prof/NoticeInsert";
	}
	
	@PostMapping("/noticeInsert")
	public String NoticeInsert(NoticeVo vo, @RequestParam("classNoticeFileSyl") MultipartFile classNoticeFileSyl, Model model) throws IllegalStateException, IOException {
		
		if(!classNoticeFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(),
					classNoticeFileSyl.getOriginalFilename(),
					classNoticeFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			File newFileName = new File(fileName);
			classNoticeFileSyl.transferTo(newFileName);
			vo.setClassNoticeFile(fileName);
		}				
		
		noticeService.NoticeInsert(vo);
		
		return "redirect:noticelist";
	}
	
	@GetMapping("/noticelist")
	public String noticelist(Model model, String id, Principal principal, NoticeVo vo) {
		System.out.println(principal.getName());
		vo.setUserId(principal.getName());
		model.addAttribute("noticeList", noticeService.NoticeList(vo));
		return "pages/classMgr/NoticeList";
	}
	
	@GetMapping("/noticeview")
	public String noticeview(@RequestParam final int classNoticeNo, Model model) {
		NoticeVo vo = noticeService.NoticeView(classNoticeNo);
		model.addAttribute("noticeList", vo);
		return "/pages/classMgr/NoticeView";
	}
}
