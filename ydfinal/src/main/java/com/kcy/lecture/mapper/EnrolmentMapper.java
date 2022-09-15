package com.kcy.lecture.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.EnrolmentVO;

public interface EnrolmentMapper  {
	
	//수강신청완료 목록
	public List<Map<String,String>> enrolmentList(EnrolmentVO vo);
	//수강신청 등록
	public void enrolmentInsert(EnrolmentVO vo);
	//수강신청 삭제
	public void enrolmentDelete(EnrolmentVO vo);
	//수강인원 체크
	public void totalPlusUpdate(EnrolmentVO vo);
	//수강인원 체크
	public void totalMinusUpdate(EnrolmentVO vo);
	//총학점 체크
	public List<Map<String,String>> gradesCheck(EnrolmentVO vo);

}
