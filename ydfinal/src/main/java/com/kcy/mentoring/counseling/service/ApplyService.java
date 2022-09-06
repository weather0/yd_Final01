package com.kcy.mentoring.counseling.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kcy.mentoring.counseling.vo.ApplyInfoVO;
import com.kcy.mentoring.counseling.vo.ApplyVO;
import com.kcy.mentoring.counseling.vo.JournalVO;

@Repository
public interface ApplyService {
	List<ApplyVO> applySelectList(String id); // 담당교수 상담가능 일자 조회
	List<ApplyVO> applySelect(String id);
	void applyInsert(ApplyVO vo); // 상담신청
	void applyListInsert(ApplyVO vo);
	void applyUpdate(ApplyVO vo); // 상담신청 수정
	void applyDelete(ApplyVO vo); // 상담신청 삭제
	String applyCheck(String id); // 학생 상담 신청 여부
	public void applyHistoryInsert(ApplyVO vo);
	
	List<ApplyVO> applyList(String id); // 상담신청한 학생들 리스트 (담당교수만 확인)
	List<ApplyVO> applyResultList(ApplyVO vo);
	ApplyInfoVO applyInfo(String stuId); // 학생 정보 불러오기
	void applyCancel(ApplyVO vo); // 상담신청 취소하기
	JournalVO journalList(ApplyVO vo);
	void journalInsert(JournalVO vo); // 상담일지 작성
	void mentoringUpdate2(String stuId);
	ApplyInfoVO profCheck(String stuId);
	
	void scheduleCheck(String mtrSchId); // 추가 : 상담신청을 한 날짜는 안보이게 
	String selectMemo(String mtrId);
	void insertMemo(ApplyVO vo);
}