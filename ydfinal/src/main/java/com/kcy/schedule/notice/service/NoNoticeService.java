package com.kcy.schedule.notice.service;

import java.util.List;

public interface NoNoticeService {
	public void noticeInsert(NoNoticeVo vo);
	public void noticeModify(NoNoticeVo vo);
	public List<NoNoticeVo> noticeList();
	public NoNoticeVo noticeView(String NoticeId);
	public void noticeDelete(NoNoticeVo vo);

}
