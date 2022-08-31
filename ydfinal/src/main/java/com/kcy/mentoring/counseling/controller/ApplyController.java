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
import com.kcy.mentoring.counseling.vo.ApplyVO;

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
		List<ApplyVO> list =  service.applyList(principal.getName());
		model.addAttribute("list", list);
		return list;
	}
}
