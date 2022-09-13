package com.kcy.lecture.service;

import java.util.List;


public interface LectureService {
	
	public void lectureInsert(LectureVO vo);
	
	public void gpaStandardInsert(LectureVO vo);
	
	public List<LectureVO> lectureList(LectureVO vo);
	
	public void lectureUpdate(LectureVO vo);
	
	public void lectureInsertClass(LectureVO vo);
	
	public List<OpenLectureVO> openLectureList(OpenLectureVO vo);
	
	 public List<OpenLectureVO> majorSelect(OpenLectureVO vo);
	
	
}
