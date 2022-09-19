package com.kcy.lecture.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.ClassScheduleVO;
import com.kcy.lecture.service.LectureVO;



public interface ScheduleMapper {

	
	//강의 시간을 검색하는 부분
	public List<ClassScheduleVO>selectschedule(ClassScheduleVO vo);

	//강의 날짜를 보여주는 부분
	 public List<ClassScheduleVO>getScheduleDays(ClassScheduleVO vo); 
	
	//강의 시간표 한번에 여러개 등록하는 부분
	public void scheduleAllInsert(List<ClassScheduleVO> list);
	
	//강의 시간표 한 개씩 등록하는 부분
	public void scheduleInsert(ClassScheduleVO vo);
	
	
	public List<Map<String,String>> classScheduleSelect(ClassScheduleVO vo);
	
	//행정처 강좌승인에서 강의시간표 체크하는 부분
	public void lectureCheck(LectureVO vo);
	
	//강의시간표 확인을 위한 기준
	public List<ClassScheduleVO> classScheduleCk(ClassScheduleVO vo);
	
	//강좌에 맞는 강의시간표를 보여주는 부분
    public List<ClassScheduleVO> classFindSchedule(ClassScheduleVO vo);	
    
    
}

