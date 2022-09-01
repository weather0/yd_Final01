package com.kcy.studentincharge.service;

import java.util.List;
import java.util.Map;

public interface StudentInChargeService {

	
	public List<Map<String,String>> studentSelectList(StudentInChargeVO vo);
	public List<Map<String,String>> studentSelect(StudentInChargeVO vo);
}
