package com.kcy.studentincharge.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.studentincharge.mapper.StudentInChargeMapper;
import com.kcy.studentincharge.service.StudentInChargeService;
import com.kcy.studentincharge.service.StudentInChargeVO;

@Service
public class StudentInChargeServiceImpl implements StudentInChargeService {

	@Autowired StudentInChargeMapper mapper;
	
	
	@Override
	public List<Map<String, String>> studentSelectList(StudentInChargeVO vo) {
		return mapper.studentSelectList(vo) ;
	}


	@Override
	public List<Map<String, String>> studentSelect(StudentInChargeVO vo) {
		return mapper.studentSelect(vo);
	}

}
