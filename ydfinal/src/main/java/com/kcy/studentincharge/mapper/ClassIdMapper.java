package com.kcy.studentincharge.mapper;

import java.util.List;

import com.kcy.studentincharge.service.ClassIdVO;

public interface ClassIdMapper {

	//교수가 개설한 강좌 목록
	public List<ClassIdVO> selectClassId(ClassIdVO vo);
}
