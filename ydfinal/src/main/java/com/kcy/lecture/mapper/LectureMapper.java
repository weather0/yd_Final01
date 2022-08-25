package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.LectureVO;

public interface LectureMapper {

	
	public void LectureInsert(LectureVO vo);
	
	public List<LectureVO> LectureList(LectureVO vo);
	
	public void LectureUpdate(LectureVO vo);
	
	public void LectureInsertClass(LectureVO vo);
}
