package com.kcy.studentincharge.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.studentincharge.service.StudentInChargeVO;

public interface StudentInChargeMapper {

	//모든 강좌에 학생 정보
	public List<Map<String,String>> studentSelectList(StudentInChargeVO vo);
	//강좌에 맞는 학생 정보
	public List<Map<String,String>> studentSelect(StudentInChargeVO vo);
}
