package com.kcy.bill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kcy.bill.service.BillsService;
import com.kcy.bill.service.BillsVO;

@Controller
public class BillsController {
	
	@Autowired
	BillsService service;	
	
	@RequestMapping("/billsInsert")
	public String BillsInsertPage(BillsVO vo) {
		return "pages/billMgr/BillsInsert";
	}

}
