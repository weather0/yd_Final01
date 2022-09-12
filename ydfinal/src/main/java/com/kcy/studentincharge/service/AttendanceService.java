package com.kcy.studentincharge.service;

import java.util.List;
import java.util.Map;

public interface AttendanceService {

	public List<Map<String, String>> attendanceList(AttendanceVO vo);

	public void attendanceInsert(AttendanceVO vo);
	
	public void attendanceInsertAll(List<AttendanceVO> list);
}
