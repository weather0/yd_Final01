package com.kcy.mentoring.counseling.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kcy.mentoring.counseling.vo.ApplyVO;

@Repository
public interface ApplyMapper {
	List<ApplyVO> applySelectList(String id); // 담당교수 상담가능 일자 조회
	List<ApplyVO> applyList(String id); // 상담신청한 학생들 리스트 (담당교수만 확인)
	String applyCheck(String id); // 학생 상담 신청 여부
	List<ApplyVO> applySelect(String id);
	void applyInsert(ApplyVO vo); // 상담신청
	void applyUpdate(ApplyVO vo); // 상담신청 수정
	void applyDelete(ApplyVO vo); // 상담신청 삭제
	void applyListInsert(String id);
	void applyHistoryInsert(ApplyVO vo);
	
}