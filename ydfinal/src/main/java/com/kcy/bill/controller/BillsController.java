package com.kcy.bill.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kcy.bill.service.BillsService;
import com.kcy.bill.service.BillsVO;
import com.kcy.bill.service.MajorbVO;

@Controller
public class BillsController {
	
	@Autowired
	BillsService service;	
	
	@RequestMapping("/billsInsert")
	public String BillsInsertPage(BillsVO vo) {
		return "pages/billMgr/BillsInsert";
	}
	
	@RequestMapping(value = "/billsInsert", method = RequestMethod.POST)
	public String BillsInsert(BillsVO vo) {
		service.billsInsert(vo);
		return "pages/billMgr/BillsInsert";
	}
	
	@ModelAttribute("majorb")
	public List<MajorbVO> majorbList(MajorbVO vo){
		return service.majorbList(vo);
	}

}
