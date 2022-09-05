package com.kcy.mentoring.counseling.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kcy.mentoring.counseling.service.impl.ApplyServiceImpl;
import com.kcy.mentoring.counseling.vo.ApplyInfoVO;
import com.kcy.mentoring.counseling.vo.ApplyVO;
import com.kcy.mentoring.counseling.vo.JournalVO;

import lombok.RequiredArgsConstructor;

/*작성자 : 정철우*/
@Controller
@RequiredArgsConstructor
public class ApplyController {
	@Autowired
	private ApplyServiceImpl service;
	ObjectMapper mapper;

	//상담 신청 폼
	@GetMapping("/apply")
	public String counseling(Model model, Principal principal) {
		String chk = service.applyCheck(principal.getName());
		if (chk.equals("ing")) {
			return "pages/mentorMgr/counseling/applyX";
		}

		return "pages/mentorMgr/counseling/apply";
	}

	// 교수가 선택한 스케줄을 불러오고 자기 담당교수의 스케줄을 골라 화면에 뿌려줌
	@PostMapping("/applySchList")
	@ResponseBody
	public List<Map<String, Object>> apllySchList(Model model, Principal principal) {
		List<ApplyVO> listAll = service.applySelectList(principal.getName());

		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();

		HashMap<String, Object> hash = new HashMap<>();

		for (int i = 0; i < listAll.size(); i++) {
			hash.put("userId", listAll.get(i).getUserId());
			hash.put("MtrSchId", listAll.get(i).getMtrSchId());
			hash.put("date", listAll.get(i).getMtrSchDate());
			hash.put("timecode", listAll.get(i).getMtrSchTimecode());
			hash.put("timeStart", listAll.get(i).getMtrSchStart());
			hash.put("timeEnd", listAll.get(i).getMtrSchEnd());

			jsonObj = new JSONObject(hash);
			jsonArr.add(jsonObj);
		}
		return jsonArr;
	}

	//응답지 입력
	@PostMapping("/applyInsert")
	@ResponseBody
	public String applyInsert(@RequestBody ApplyVO vo) {
		service.applyInsert(vo);
		return "true";
	}

	// 선택
	@PostMapping("/applySelect")
	@ResponseBody
	public List<ApplyVO> applySelect(Principal principal, Model model) {
		//model.addAttribute("list",service.applySelect(principal.getName()));
		return service.applySelect(principal.getName());
	}

	// 삭제
	@GetMapping("/applyDelete")
	@ResponseBody
	public String applyDelete(ApplyVO vo) {
		service.applyDelete(vo);
		return "true";
	}

	// 상담신청한 학생리스트폼
	@GetMapping("/applyList")
	public String applyListform() {
		return "pages/mentorMgr/counseling/applyList";
	}

	// 상담신청한 학생리스트 불러오기
	@PostMapping("/applyList")
	@ResponseBody
	public List<ApplyVO> applyList(Principal principal, Model model) {
		List<ApplyVO> list = service.applyList(principal.getName());
		model.addAttribute("list", list);
		return list;
	}

	// 학생의 검사 결과를 모달창에 띄워주기
	@PostMapping("/applyResultList")
	@ResponseBody
	public List<ApplyVO> applyResultList(Model model, String stuId) {
		List<ApplyVO> list = service.applyResultList(stuId);
		model.addAttribute("list", list);
		return list;
	}

	// 학생 정보 불러오기
	@PostMapping("/applyInfo")
	@ResponseBody
	public ApplyInfoVO applyInfo(Model model, String stuId) {
		ApplyInfoVO vo = service.applyInfo(stuId);
		model.addAttribute("vo", vo);
		return vo;
	}

	// 상담신청 취소하기
	@PostMapping("/applyCancel")
	public String applyCancel(ApplyVO vo) {
		service.applyCancel(vo);
		return "redirect:applyList";
	}

	// 각 학생의 상담일지를 볼 수 있는 폼
	@PostMapping("/journalSelect")
	@ResponseBody
	public JournalVO journalList(Model model, @RequestBody ApplyVO vo) {
		JournalVO vo1 = service.journalList(vo);
		model.addAttribute("list", vo1);
		return vo1;
	}

	// 상담일지 작성하기
	@PostMapping("/journalInsert")
	public String journalInsert(JournalVO vo) {
		service.journalInsert(vo);
		return "redirect:applyList";
	}

	// 상담종료하기
	@PostMapping("/mentoringUpdate2")
	@ResponseBody
	public String mentoringUpdate2(String stuId) {
		service.mentoringUpdate2(stuId);
		return "true";
	}

}
