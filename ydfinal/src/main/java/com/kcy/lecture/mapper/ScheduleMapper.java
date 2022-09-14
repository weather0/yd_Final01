package com.kcy.lecture.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.ClassScheduleVO;
import com.kcy.lecture.service.LectureVO;



public interface ScheduleMapper {

	
	
	public List<ClassScheduleVO>selectschedule(ClassScheduleVO vo);

	
	 public List<ClassScheduleVO>getScheduleDays(ClassScheduleVO vo); 
	
	
	public void scheduleAllInsert(List<ClassScheduleVO> list);
	
	
	public void scheduleInsert(ClassScheduleVO vo);
	
	
	public List<Map<String,String>> classScheduleSelect(ClassScheduleVO vo);
	
	public void lectureCheck(LectureVO vo);
	
}

