package com.kcy.lecture.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.EnrolmentVO;
import com.kcy.lecture.service.OpenLectureVO;

public interface EnrolmentMapper  {
	
	public List<Map<String,String>> EnrolmentList(EnrolmentVO vo);
	
	public void EnrolmentInsert(EnrolmentVO vo);
	
	public void EnrolmentDelete(EnrolmentVO vo);
	
	public void TotalPlusUpdate(EnrolmentVO vo);
	
	public void TotalMinusUpdate(EnrolmentVO vo);
	
	public List<Map<String,String>> creitCheck(EnrolmentVO vo);

}
