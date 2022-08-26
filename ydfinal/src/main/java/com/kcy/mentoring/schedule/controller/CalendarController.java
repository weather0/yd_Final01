package com.kcy.mentoring.schedule.controller;

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
import com.kcy.mentoring.schedule.service.impl.CalenServiceImpl;
import com.kcy.mentoring.schedule.vo.scheduleVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class CalendarController {
	@Autowired
	private CalenServiceImpl service;
	ObjectMapper mapper;

	@GetMapping("/ttest")
	public String test() {

		return "pages/mentorMgr/schedule/schedule2";
	}

	@GetMapping("/schedule")
	public String calender(Model model) {
		List<scheduleVO> list = service.calendarSelectList();
		model.addAttribute("list", list);

		return "pages/mentorMgr/schedule/schedule";
	}

	@GetMapping("/schedules")
	@ResponseBody
	public List<Map<String, Object>> calenderList(Model model) {
		List<scheduleVO> listAll = service.calendarSelectList();

		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();

		HashMap<String, Object> hash = new HashMap<>();

		for (int i = 0; i < listAll.size(); i++) {
			hash.put("ProfId", listAll.get(i).getProfId());
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

	//하나 넣기
	@PostMapping("/scheduleInsert1")
	@ResponseBody
	public String scheduleInsert2(scheduleVO vo) {
		service.calendarInsert(vo);
		return "true";
	}

	//여러개 넣기
	@PostMapping("/scheduleInsert2")
	@ResponseBody
	public String scheduleInsert(@RequestBody List<scheduleVO> list) {
		for (scheduleVO vo1 : list) {
			service.calendarInsert(vo1);
		}
		return "true";
	}
	// 선택
	@PostMapping("/scheduleSelect")
	@ResponseBody
	public String scheduleSelect(scheduleVO vo) {
			service.calendarSelect(vo);
		return "true";
	}
	// 삭제
	@PostMapping("/scheduleDelete")
	@ResponseBody
	public String scheduleDelete(scheduleVO vo) {
			service.calendarDelete(vo);
		return "true";
	}

}
