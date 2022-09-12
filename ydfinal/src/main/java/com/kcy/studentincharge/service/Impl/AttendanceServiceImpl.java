package com.kcy.studentincharge.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.studentincharge.mapper.AttendanceMapper;
import com.kcy.studentincharge.service.AttendanceService;
import com.kcy.studentincharge.service.AttendanceVO;

@Service
public class AttendanceServiceImpl implements AttendanceService {

	@Autowired AttendanceMapper mapper;
		
	@Override
	public List<Map<String, String>> attendanceList(AttendanceVO vo) {
		return mapper.attendanceList(vo);
	}

	@Override
	public void attendanceInsert(AttendanceVO vo) {
	
		mapper.attendanceInsert(vo);
	}

	@Override
	public void attendanceInsertAll(List<AttendanceVO> list) {
		for(AttendanceVO vo : list) {
			mapper.attendanceInsert(vo);
		}
	}

	
}
