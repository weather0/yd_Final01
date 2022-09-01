package com.kcy.studentincharge.mapper;

import java.util.List;

import com.kcy.studentincharge.service.ClassIdVO;

public interface ClassIdMapper {

	public List<ClassIdVO> selectClassId(ClassIdVO vo);
}
