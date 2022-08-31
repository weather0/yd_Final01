package com.kcy.lecture.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.EnrolmentVO;
import com.kcy.lecture.service.OpenLectureVO;

public interface EnrolmentMapper  {
	
	public List<Map<String,String>> enrolmentList(EnrolmentVO vo);
	
	public void enrolmentInsert(EnrolmentVO vo);
	
	public void enrolmentDelete(EnrolmentVO vo);
	
	public void totalPlusUpdate(EnrolmentVO vo);
	
	public void totalMinusUpdate(EnrolmentVO vo);
	
	public List<Map<String,String>> gradesCheck(EnrolmentVO vo);

}
