package com.kcy.studentincharge.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.studentincharge.service.AttendanceVO;

public interface AttendanceMapper {

	//자신이 갖고 있는 강좌를 보여주는 부분
	public List<Map<String, String>> attendanceList(AttendanceVO vo);
	
	//학생들에 출결을 등록하는 부분
	public void attendanceInsert(AttendanceVO vo);
	
	//모든 학생에 출결을 등록하는 부분
	public void attendanceInsertAll(List<AttendanceVO> list);
}
