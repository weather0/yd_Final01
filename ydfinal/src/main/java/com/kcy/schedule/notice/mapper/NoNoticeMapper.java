package com.kcy.schedule.notice.mapper;

import java.util.List;

import com.kcy.schedule.notice.service.NoNoticeVo;


public interface NoNoticeMapper {
	public void noticeInsert(NoNoticeVo vo);
	public void noticeModify(NoNoticeVo vo);
	public void hitUp(String NoticeId);
	public void noticeDelete(NoNoticeVo vo);
	public List<NoNoticeVo> noticeList();	
	public NoNoticeVo noticeView(String NoticeId);
}
