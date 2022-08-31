package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.LectureVO;
import com.kcy.lecture.service.OpenLectureVO;

public interface LectureMapper {

	
	public void lectureInsert(LectureVO vo);
	
	public List<LectureVO> lectureList(LectureVO vo);
	
	public void lectureUpdate(LectureVO vo);
	
	public void lectureInsertClass(LectureVO vo);
	
	public List<OpenLectureVO> openLectureList(OpenLectureVO vo);
	
	
	
}
