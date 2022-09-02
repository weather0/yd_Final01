package com.kcy.lecture.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.lecture.mapper.ScheduleMapper;
import com.kcy.lecture.service.ScheduleService;
import com.kcy.lecture.service.ClassScheduleVO;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired ScheduleMapper mapper;

	@Override
	public List<ClassScheduleVO> selectschedule(ClassScheduleVO vo) {
		return mapper.selectschedule(vo);
	}

	@Override
	public void scheduleInsert(ClassScheduleVO vo) {
		
		mapper.scheduleInsert(vo);
	}

}
