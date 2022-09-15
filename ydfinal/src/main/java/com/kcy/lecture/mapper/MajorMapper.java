package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.MajorVO;

public interface MajorMapper {

	//전공을 보여주는 부분
	public List<MajorVO> majorlist();
}
