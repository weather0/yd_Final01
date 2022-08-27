package com.kcy.lecture.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.EnrolmentVO;

public interface EnrolmentMapper  {
	
	public List<Map<String,String>> EnrolmentList(EnrolmentVO vo);
	
	public void EnrolmentInsert(EnrolmentVO vo);
	
	public void EnrolmentDelete(EnrolmentVO vo);
	
	

}
