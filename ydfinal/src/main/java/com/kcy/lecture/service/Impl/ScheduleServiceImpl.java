package com.kcy.lecture.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.lecture.mapper.ScheduleMapper;
import com.kcy.lecture.service.ClassScheduleVO;
import com.kcy.lecture.service.LectureVO;
import com.kcy.lecture.service.ScheduleService;

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

	//행정처에서 시간표를 클릭하여 여러개를 한번에 추가하는 부분
	@Override
	public void scheduleAllInsert(List<ClassScheduleVO> list) {
		  for(ClassScheduleVO vo : list ) {
			  mapper.scheduleInsert(vo);
			  }
	}



	@Override
	public List<Map<String, String>> classScheduleSelect(ClassScheduleVO vo) {
		
		return mapper.classScheduleSelect(vo);
	}




	
	 
	
	

}
