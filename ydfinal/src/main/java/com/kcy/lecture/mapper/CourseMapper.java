package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.CourseVO;


public interface CourseMapper {

	//교과목 정보
	 public List<CourseVO> getCourse(CourseVO vo);
	 
	
	
}
