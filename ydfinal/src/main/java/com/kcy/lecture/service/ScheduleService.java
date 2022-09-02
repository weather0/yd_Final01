package com.kcy.lecture.service;

import java.util.List;

public interface ScheduleService {

	public List<ClassScheduleVO>selectschedule(ClassScheduleVO vo);
	
	public void scheduleInsert(ClassScheduleVO vo);
}
