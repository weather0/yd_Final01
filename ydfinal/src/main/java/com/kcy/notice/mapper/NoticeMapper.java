package com.kcy.notice.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.notice.service.NoticeVo;
import com.kcy.quiz.service.QuizVo;
// 황하경 220831
public interface NoticeMapper {
	
	// 공지 등록 및 수정(교수)
	public void noticeInsert(NoticeVo vo);
	public void noticeModify(NoticeVo vo);
	
	// 공지 리스트
	public List<NoticeVo> noticeList(NoticeVo vo);
	public List<NoticeVo> getClassId(NoticeVo vo);
	public List<NoticeVo> getSearchList(NoticeVo vo);
	public List<QuizVo> getClassIdProf(QuizVo vo);
	
	// 공지 세부
	public NoticeVo noticeView(int classNoticeNo);
}
