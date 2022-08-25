package com.kcy.lecture.service;

import java.util.List;


public interface LectureService {
	
	public void LectureInsert(LectureVO vo);
	
	public List<LectureVO> LectureList(LectureVO vo);
	
	public void LectureUpdate(LectureVO vo);

}
