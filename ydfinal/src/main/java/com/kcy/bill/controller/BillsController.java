package com.kcy.bill.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kcy.bill.service.BillsService;
import com.kcy.bill.service.BillsVO;
import com.kcy.bill.service.MajorbVO;

/*
 * 작성자 : 곽영우
 * 작성일자 : 
 * 내용 :
 * 수정일자 :
 * 수정내용 :
 */

@Controller
public class BillsController {
	
	@Autowired
	BillsService service;	
	
	//등록금 고지 페이지 이동
	@GetMapping("/billsInsert")
	public String BillsInsertPage(BillsVO vo) {
		return "pages/billMgr/BillsInsert";
	}
	
	//등록금 고지서 등록
	@RequestMapping(value = "/billsInsert", method = RequestMethod.POST)
	public String BillsInsert(BillsVO vo) {
		service.billsInsert(vo);
		return "redirect:BillsInsert";
	}
	
	//전공코드(임시)	
	@ModelAttribute("majorb")
	public List<MajorbVO> majorbList(MajorbVO vo){
		return service.majorbList(vo);
	}

}
