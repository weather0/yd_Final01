package com.kcy.mentoring.schedule.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.mentoring.schedule.mapper.CalenMapper;
import com.kcy.mentoring.schedule.service.CalenService;
import com.kcy.mentoring.schedule.vo.scheduleVO;

@Service
public class CalenServiceImpl implements CalenService {

	@Autowired
	CalenMapper map;

	@Override
	public List<scheduleVO> calendarSelectList() {
		return map.calendarSelectList();
	}

	@Override
	public List<scheduleVO> calendarSearchList(String key) {
		return map.calendarSearchList(key);
	}

	@Override
	public int calendarInsert(scheduleVO vo) {
		return map.calendarInsert(vo);
	}

	@Override
	public int calendarUpdate(scheduleVO vo) {
		return map.calendarUpdate(vo);
	}

	@Override
	public int calendarDelete(scheduleVO vo) {
		return map.calendarDelete(vo);
	}

	@Override
	public scheduleVO calendarSelect(scheduleVO vo) {
		return map.calendarSelect(vo);
	}

}
