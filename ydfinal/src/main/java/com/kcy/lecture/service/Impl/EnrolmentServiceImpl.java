package com.kcy.lecture.service.Impl;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.lecture.mapper.EnrolmentMapper;
import com.kcy.lecture.mapper.LectureMapper;
import com.kcy.lecture.service.EnrolmentService;
import com.kcy.lecture.service.EnrolmentVO;
import com.kcy.lecture.service.OpenLectureVO;

@Service
public class EnrolmentServiceImpl implements EnrolmentService {

	
	@Autowired EnrolmentMapper mapper;
	@Autowired LectureMapper LectureMapper;
	

	@Override
	public List<Map<String, String>> enrolmentList(EnrolmentVO vo) {
		return mapper.enrolmentList(vo);
	}

	//수강신청한 인원을 추가하고 수강신청 완료 테이블로 추가하는 부분
	@Override
	@Transactional
	public void enrolmentInsert(EnrolmentVO vo) {
		mapper.totalPlusUpdate(vo);
		mapper.enrolmentInsert(vo);
	}

	//수강신청한 인원을 빼고 강좌를 삭제하는 부분
	@Override
	@Transactional
	public void enrolmentDelete(EnrolmentVO vo) {
		mapper.totalMinusUpdate(vo);
		mapper.enrolmentDelete(vo);
	}

	@Override
	public void totalPlusUpdate(EnrolmentVO vo) {
		
	}

	@Override
	public void totalMinusUpdate(EnrolmentVO vo) {
		
	}

	@Override
	public List<Map<String, String>> gradesCheck(EnrolmentVO vo) {
		
		return mapper.gradesCheck(vo);
	}




	

	




}
