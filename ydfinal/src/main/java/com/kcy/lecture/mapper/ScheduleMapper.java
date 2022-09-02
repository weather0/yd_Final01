package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.ClassScheduleVO;



public interface ScheduleMapper {

	
	
	public List<ClassScheduleVO>selectschedule(ClassScheduleVO vo);

	
	public List<ClassScheduleVO>getScheduleDays(ClassScheduleVO vo);
	
	
	public void scheduleInsert(ClassScheduleVO vo);
}

