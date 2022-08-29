package com.kcy.mentoring.schedule.service.impl;

import java.util.List;

import javax.transaction.Transactional;

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
	public List<scheduleVO> calendarSelectList(String id) {
		return map.calendarSelectList(id);
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
	@Transactional 
	public void calendarAllInsert(List<scheduleVO> list) {
		for (scheduleVO vo1 : list) { // 서비스에서 
			map.calendarInsert(vo1);
			System.out.println(vo1);
		}
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
