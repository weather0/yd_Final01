package com.kcy.lecture.service.Impl;

import java.util.List;
import java.util.Map;

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
	public List<Map<String, String>> EnrolmentList(EnrolmentVO vo) {
		return mapper.EnrolmentList(vo);
	}

	@Override
	public void EnrolmentInsert(EnrolmentVO vo) {
	
		mapper.EnrolmentInsert(vo);
	}



	

	




}
