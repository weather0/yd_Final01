package com.kcy.notice.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.notice.mapper.NoticeMapper;
import com.kcy.notice.service.NoticeService;
import com.kcy.notice.service.NoticeVo;
import com.kcy.quiz.service.QuizVo;
// 황하경 220831
@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired NoticeMapper map;
	
	@Override
	public void noticeInsert(NoticeVo vo) {
		map.noticeInsert(vo);
	}

	@Override
	public List<NoticeVo> noticeList(NoticeVo vo) {
		return map.noticeList(vo);
	}

	@Override
	public NoticeVo noticeView(int classNoticeNo) {
		return map.noticeView(classNoticeNo);
	}

	@Override
	public List<NoticeVo> getSearchList(NoticeVo vo) {
		return map.getSearchList(vo);
	}

	@Override
	public List<NoticeVo> getClassId(NoticeVo vo) {
		return map.getClassId(vo);
	}

	@Override
	public List<QuizVo> getClassIdProf(QuizVo vo) {
		return map.getClassIdProf(vo);
	}

	@Override
	public void noticeModify(NoticeVo vo) {
		map.noticeModify(vo);
		
	}
	
}
