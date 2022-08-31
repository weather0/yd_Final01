package com.kcy.lecture.service;

import java.util.List;
import java.util.Map;


public interface EnrolmentService {
	
	
	public List<Map<String,String>> enrolmentList(EnrolmentVO vo);

	void enrolmentInsert(EnrolmentVO vo);
	
	public void enrolmentDelete(EnrolmentVO vo);
	
	public void totalPlusUpdate(EnrolmentVO vo);
	
	public void totalMinusUpdate(EnrolmentVO vo);
	
	public List<Map<String,String>> gradesCheck(EnrolmentVO vo);

}
