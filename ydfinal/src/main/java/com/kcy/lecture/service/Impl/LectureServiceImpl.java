package com.kcy.lecture.service.Impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.lecture.mapper.LectureMapper;
import com.kcy.lecture.service.LectureService;
import com.kcy.lecture.service.LectureVO;
import com.kcy.lecture.service.OpenLectureVO;

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
	@Transactional
	public void LectureUpdate(LectureVO vo) {
		
		mapper.LectureUpdate(vo);
		mapper.LectureInsertClass(vo);
	}

	@Override
	public void LectureInsertClass(LectureVO vo) {
		
		mapper.LectureInsertClass(vo);
	}

	@Override
	public List<OpenLectureVO> OpenLectureList(OpenLectureVO vo) {
		
		return mapper.OpenLectureList(vo);
	}




	
}
