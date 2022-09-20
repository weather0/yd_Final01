package com.kcy.notice.service;

import java.util.List;
import java.util.Map;

import com.kcy.quiz.service.QuizVo;
// 황하경 220831
public interface NoticeService {
	
	// 리스트 조회
	public List<NoticeVo> getSearchList(NoticeVo vo);
	public List<NoticeVo> getClassId(NoticeVo vo);
	public List<QuizVo> getClassIdProf(QuizVo vo);
	public List<NoticeVo> noticeList(NoticeVo vo);

	// 공지 입력 및 수정
	public void noticeInsert(NoticeVo vo);
	public void noticeModify(NoticeVo vo);
	
	// 공지 세부
	public NoticeVo noticeView(int classNoticeNo);
}
