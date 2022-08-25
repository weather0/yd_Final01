package com.kcy.lecture.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.lecture.mapper.LectureMapper;
import com.kcy.lecture.service.LectureClassVO;
import com.kcy.lecture.service.LectureService;
import com.kcy.lecture.service.LectureVO;

@Service
public class LectureServiceImpl implements LectureService {

	@Autowired  LectureMapper mapper;
	
	@Override
	public void LectureInsert(LectureVO vo) {
		
		mapper.LectureInsert(vo);
	}

	@Override
	public List<LectureVO> LectureList(LectureVO vo) {
		
		
		return mapper.LectureList(vo) ;
	}

	@Override
	public void LectureUpdate(LectureVO vo) {
		
		mapper.LectureUpdate(vo);
	}

	@Override
	public void LectureInsertClass(LectureClassVO vo) {
		
		mapper.LectureInsertClass(vo);
	}
	
}
