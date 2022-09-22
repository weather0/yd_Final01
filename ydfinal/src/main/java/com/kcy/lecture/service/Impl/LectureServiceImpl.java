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

	
	//강좌 개설 신청을 하고 성적 배율을 추가하는 부분
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
	//행정처에서 승인완료를 YN으로 체크하고 강좌신청 완료 테이블에 추가하는 부분
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
	public void gpaStandardInsert(LectureVO vo) {
		
		mapper.gpaStandardInsert(vo);
	}

	
}
