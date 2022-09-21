package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.LectureVO;
import com.kcy.lecture.service.OpenLectureVO;
import com.kcy.lecture.service.TimetableVO;

public interface LectureMapper {

	//강좌신청 등록
	public void lectureInsert(LectureVO vo);
	//성적비율 등록
	public void gpaStandardInsert(LectureVO vo);
	//강좌신청 승인 목록
	public List<LectureVO> lectureList(LectureVO vo);
	//강좌신청 승인 업데이트
	public void lectureUpdate(LectureVO vo);
	//강좌신청 완료 테이블에 등록
	public void lectureInsertClass(LectureVO vo);
	//강좌신청 완료 목록
	public List<OpenLectureVO> openLectureList(OpenLectureVO vo);
    //자기 전공 데이터
    public OpenLectureVO myMajor(OpenLectureVO vo);
    //자기 학년 체크
    public OpenLectureVO myGrade(OpenLectureVO vo);
    
    
    

    
    
	
	
}
