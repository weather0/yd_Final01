package com.kcy.lecture.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.lecture.mapper.EnrolmentMapper;
import com.kcy.lecture.service.EnrolmentService;
import com.kcy.lecture.service.EnrolmentVO;

@Service
public class EnrolmentServiceImpl implements EnrolmentService {

	
	@Autowired EnrolmentMapper mapper;
	
	@Override
	public List<EnrolmentVO> EnrolmentList(EnrolmentVO vo) {
		
		return mapper.EnrolmentList(vo) ;
	}

}
