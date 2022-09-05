package com.kcy.bill.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kcy.bill.service.BillsService;
import com.kcy.bill.service.BillsVO;
import com.kcy.bill.service.MajorbVO;
import com.kcy.bill.service.PayVO;

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
		return "pages/billMgr/billsInsert";
	}
	
	//등록금 고지서 등록
	@RequestMapping(value = "/billsInsert", method = RequestMethod.POST)
	public String BillsInsert(BillsVO vo, PayVO pvo, Model model, RedirectAttributes redirectAttributes) {
		try {
		service.billsInsert(vo);
		} catch(DuplicateKeyException e) {
			redirectAttributes.addFlashAttribute("message", "중복되는 청구코드가 존재합니다");			
		}		
		return "redirect:billsInsert";
	}

	//전공코드(임시)	
	@ModelAttribute("majorb")
	public List<MajorbVO> majorbList(MajorbVO vo){
		return service.majorbList(vo);
	}
	
	//등록금 납부 이력 페이지 이동
	@RequestMapping("/payList")
	public String payList(PayVO vo, Model model, Principal principal) {	
	return "pages/billMgr/payList";
	}
	
	//등록금 납부 이력 조회
	@GetMapping("/payListInfo")
	public String payListInfo(PayVO vo, Model model, Principal principal) {
		vo.setStuId(principal.getName());
		model.addAttribute("payList", service.payInfo(vo));
		model.addAttribute("payStdInfo", service.payStdInfo(vo));
	return "pages/billMgr/payList";
	}
	
	//납부대상자 확인 페이지 
	@RequestMapping("/payCheck")
	public String payCheck(PayVO vo) {		
	return "pages/billMgr/payCheck";
	}
	
	//납부대상자 상세보기 
	@RequestMapping("/payCheckInfo")
	public String payCheckInfo(PayVO vo, Model model) {
		model.addAttribute("payCheckInfo", service.payCheck(vo));		
	return "pages/billMgr/payCheck";
	}
	
	//등록금 고지서 확인 페이지(학생)
	@RequestMapping("/billCheck")
	public String billCheck(PayVO vo) {		
	return "pages/billMgr/billCheck";
	}
	
	//등록금 고지서 확인(학생)
	@RequestMapping("/billCheckInfo")
	public String billCheckInfo(PayVO vo, Model model, Principal principal) {
		vo.setStuId(principal.getName());
		model.addAttribute("billCheckInfo", service.billCheck(vo));
	return "pages/billMgr/billCheck";
	}
	
	//분할 납부 신청
	@PostMapping("/payChange")
	@ResponseBody
	public String payChange(PayVO vo) {
		service.payChange(vo);
		return "1";
	}
	
	//분할 납부 신청취소
	@PostMapping("/payChangeCancel")
	@ResponseBody
	public String payChangeCancel(PayVO vo) {
		service.payChangeCancel(vo);
		return "1";
	}
	
	//등록금 고지서 확인 페이지(행정)
	@RequestMapping("/billList")
	public String billList(BillsVO vo) {		
	return "pages/billMgr/billList";
	}
	
	//등록금 고지서 확인(행정)
	@RequestMapping("/billListInfo")
	public String billListInfo(BillsVO vo, Model model) {			
		model.addAttribute("billListInfo", service.billList(vo));
	return "pages/billMgr/billList";
	}
	
	//등록금 고지서 확인(수정)
	@PostMapping("/billsUpdate")
	@ResponseBody
	public String billUpdate(BillsVO vo, PayVO pvo) {
		service.billUpdate(vo);
		service.payUpdate(pvo);
		return "1";
	}	
	
	//등록금 고지(일괄)
	@PostMapping("/payInsert")
	@ResponseBody
	public String payInsert(PayVO vo) {
		service.payInsert(vo);
		return "1";
	}
	
	//등록금 고지(선택)
	@PostMapping("/chkPayInsert")
	@ResponseBody
	public String chkPayInsert(PayVO vo, @RequestParam(value="Id") List<String> id) {
				
		vo.setId(id);		
		service.chkPayInsert(vo);
		return "1";
	}
}
