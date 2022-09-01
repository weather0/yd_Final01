package com.kcy.studentincharge.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.studentincharge.service.StudentInChargeVO;

public interface StudentInChargeMapper {

	public List<Map<String,String>> studentSelectList(StudentInChargeVO vo);
	
	public List<Map<String,String>> studentSelect(StudentInChargeVO vo);
}
