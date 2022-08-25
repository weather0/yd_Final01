package com.kcy.mentoring.memo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kcy.mentoring.memo.mapper.MentoringMapper;
import com.kcy.mentoring.memo.service.MentoringMemoVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/mentoring")
public class MentoringController {
	@Autowired
	MentoringMapper mapper;

	@GetMapping("/memo")
	public int mentoringMemoInsert(MentoringMemoVO vo) {
		return mapper.mentoringMemoInsert(vo);
	}

	

	// =========================================

	
}
