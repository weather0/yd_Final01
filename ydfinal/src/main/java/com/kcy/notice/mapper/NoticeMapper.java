package com.kcy.notice.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.notice.service.NoticeVo;
import com.kcy.quiz.service.QuizVo;
// 황하경 220831
public interface NoticeMapper {
	public void noticeInsert(NoticeVo vo);
	public List<NoticeVo> noticeList(NoticeVo vo);
	public NoticeVo noticeView(int classNoticeNo);
	public List<NoticeVo> getClassId(NoticeVo vo);
	public List<NoticeVo> getSearchList(NoticeVo vo);
	public List<QuizVo> getClassIdProf(QuizVo vo);
}
