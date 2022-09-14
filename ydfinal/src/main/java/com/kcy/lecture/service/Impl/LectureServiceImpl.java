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

	@Autowired
	LectureMapper mapper;

	@Override
	@Transactional
	public void lectureInsert(LectureVO vo) {
		
		mapper.lectureInsert(vo);
		mapper.gpaStandardInsert(vo);
	}

	@Override
	public List<LectureVO> lectureList(LectureVO vo) {

		return mapper.lectureList(vo);
	}

	@Override
	@Transactional
	public void lectureUpdate(LectureVO vo) {

		mapper.lectureUpdate(vo);
		mapper.lectureInsertClass(vo);
	}

	@Override
	public void lectureInsertClass(LectureVO vo) {

	}

	@Override
	public List<OpenLectureVO> openLectureList(OpenLectureVO vo) {

		return mapper.openLectureList(vo);
	}

	@Override
	public List<OpenLectureVO> majorSelect(OpenLectureVO vo) {

		return mapper.majorSelect(vo);
	}

	@Override
	public void gpaStandardInsert(LectureVO vo) {
		
		mapper.gpaStandardInsert(vo);
	}

	
}
