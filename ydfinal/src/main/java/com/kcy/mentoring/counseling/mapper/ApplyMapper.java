package com.kcy.mentoring.counseling.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kcy.mentoring.counseling.vo.ApplyInfoVO;
import com.kcy.mentoring.counseling.vo.ApplyVO;
import com.kcy.mentoring.counseling.vo.JournalVO;

@Repository
public interface ApplyMapper {
	List<ApplyVO> applySelectList(String id); // 담당교수 상담가능 일자 조회
	List<ApplyVO> applyList(String id); // 상담신청한 학생들 리스트 (담당교수만 확인)
	String applyCheck(String id); // 학생 상담 신청 여부
	ApplyVO applyCheckPrint(String id); // 학생 상담 신청했으면 나오는 
	List<ApplyVO> applySelect(String id);
	void applyInsert(ApplyVO vo); // 상담신청
	void applyUpdate(ApplyVO vo); // 상담신청 수정
	void applyDelete(ApplyVO vo); // 상담신청 삭제
	void applyListInsert(ApplyVO vo);
	void applyHistoryInsert(ApplyVO vo);
	List<ApplyVO> applyResultList(ApplyVO vo);
	ApplyInfoVO applyInfo(String stuId); // 학생 정보 불러오기
	void applyCancel(ApplyVO vo); // 상담신청 취소하기
	JournalVO journalList(ApplyVO vo); // 상담일지 통으로 가져오기
	void journalInsert(JournalVO vo);
	void mentoringUpdate(JournalVO vo); // 상담일지 작성시 상담구분을 상담완료로 바꿈
	void mentoringUpdate2(String stuId); // 상담일지 작성시 상담구분을 상담완료로 바꿈
	
	ApplyInfoVO profCheck(String stuId); // 담당교수 정보 불러오기
	
	void scheduleCheck(String mtrSchId); // 추가 : 상담신청을 한 날짜는 안보이게 
	
	public void insertMemo(ApplyVO vo);
	public String selectMemo(String mtrId);
	
	
}