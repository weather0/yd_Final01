package com.kcy.mentoring.schedule.controller;

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
	public String calender() {

		return "pages/mentorMgr/schedule/schedule";
	}

	@GetMapping("/schedules")
	@ResponseBody
	public List<Map<String, Object>> calenderList(Model model,Principal principal, String id) {
		List<scheduleVO> listAll = service.calendarSelectList(id);

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
			service.calendarAllInsert(list);
		
		return "true";
	}
	// 선택
	@GetMapping("/scheduleSelect")
	@ResponseBody
	public scheduleVO scheduleSelect(scheduleVO vo , Model model) {
		return service.calendarSelect(vo);
	}
	// 삭제
	@GetMapping("/scheduleDelete")
	@ResponseBody
	public String scheduleDelete(scheduleVO vo) {
			service.calendarDelete(vo);
		return "true";
	}

}
