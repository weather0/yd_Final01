package com.kcy.studentincharge.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.studentincharge.service.AttendanceVO;

public interface AttendanceMapper {

	public List<Map<String, String>> attendanceList(AttendanceVO vo);
	
	public void attendanceInsert(AttendanceVO vo);
	
	public void attendanceInsertAll(List<AttendanceVO> list);
}
