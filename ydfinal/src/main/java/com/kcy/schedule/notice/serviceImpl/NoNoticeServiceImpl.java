package com.kcy.schedule.notice.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.schedule.notice.mapper.NoNoticeMapper;
import com.kcy.schedule.notice.service.NoNoticeService;
import com.kcy.schedule.notice.service.NoNoticeVo;


@Service
public class NoNoticeServiceImpl implements NoNoticeService {

	@Autowired NoNoticeMapper map;
	
	@Override
	public void noticeInsert(NoNoticeVo vo) {
		map.noticeInsert(vo);
		
	}

	@Override
	public List<NoNoticeVo> noticeList() {
		// TODO Auto-generated method stub
		return map.noticeList();
	}

	@Override
	public NoNoticeVo noticeView(String NoticeId) {
		// TODO Auto-generated method stub
		map.hitUp(NoticeId);
		return map.noticeView(NoticeId);
	}

	@Override
	public void noticeModify(NoNoticeVo vo) {
		map.noticeModify(vo);
		
	}

	@Override
	public void noticeDelete(NoNoticeVo vo) {
		map.noticeDelete(vo);
		
	}

	
}
