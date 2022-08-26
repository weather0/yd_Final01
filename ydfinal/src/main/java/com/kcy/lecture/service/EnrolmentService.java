package com.kcy.lecture.service;

import java.util.List;
import java.util.Map;


public interface EnrolmentService {
	
	
	public List<Map<String,String>> EnrolmentList(EnrolmentVO vo);

	void EnrolmentInsert(EnrolmentVO vo);
	

}
