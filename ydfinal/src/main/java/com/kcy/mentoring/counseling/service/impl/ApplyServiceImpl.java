package com.kcy.mentoring.counseling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kcy.mentoring.counseling.mapper.ApplyMapper;
import com.kcy.mentoring.counseling.service.ApplyService;
import com.kcy.mentoring.counseling.vo.ApplyInfoVO;
import com.kcy.mentoring.counseling.vo.ApplyVO;
import com.kcy.mentoring.counseling.vo.JournalVO;

@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	ApplyMapper map;

	@Override
	public List<ApplyVO> applySelectList(String id) {
		return map.applySelectList(id);
	}

	@Override
	public List<ApplyVO> applySelect(String id) {
		return map.applySelect(id);
	}

	@Override
	@Transactional
	public void applyInsert(ApplyVO vo) {
		map.applyHistoryInsert(vo);
		map.applyListInsert(vo.getUserId());
		for (ApplyVO vo1 : vo.getListVO()) { // 서비스에서 
			map.applyInsert(vo1);
		}
	}
	
	@Override
	public void applyListInsert(String id) {
		map.applyListInsert(id);
	}
	@Override
	public void applyHistoryInsert(ApplyVO vo) {
		map.applyHistoryInsert(vo);
	}

	@Override
	public void applyUpdate(ApplyVO vo) {
		map.applyUpdate(vo);
	}

	@Override
	public void applyDelete(ApplyVO vo) {
		map.applyDelete(vo);
	}

	@Override
	public String applyCheck(String id) {
		return map.applyCheck(id);
	}

	@Override
	public List<ApplyVO> applyList(String id) {
		
		return map.applyList(id);
	}
	
	// 학생의 검사 결과를 확인하는 창
	@Override
	public List<ApplyVO> applyResultList(String stuId) {
		
		return map.applyResultList(stuId);
	}
	
	// 학생 정보 불러오기
	@Override
	public ApplyInfoVO applyInfo(String stuId) {
		return map.applyInfo(stuId);
	}

	// 상담신청 취소하기
	@Override
	public void applyCancel(ApplyVO vo) {
		map.applyCancel(vo);
	}
	
	// 상담일지 전체를 통으로 리스트로 반환
	@Override
	public JournalVO journalList(ApplyVO vo) {
		return map.journalList(vo);
	}
	// 상담일지 작성
		@Override
	public void journalInsert(JournalVO vo) {
		map.journalInsert(vo);
		map.mentoringUpdate(vo);
	}
		@Override
		public void mentoringUpdate2(String stuId) {
			map.mentoringUpdate2(stuId);
		}


}
