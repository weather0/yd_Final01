package com.kcy.lecture.service;

import java.util.List;
import java.util.Map;

public interface ScheduleService {

	public List<ClassScheduleVO>selectschedule(ClassScheduleVO vo);
	
	public void scheduleInsert(ClassScheduleVO vo);

	public void scheduleAllInsert(List<ClassScheduleVO> list);
	
	public List<Map<String,String>> classScheduleSelect(ClassScheduleVO vo);
	
}
