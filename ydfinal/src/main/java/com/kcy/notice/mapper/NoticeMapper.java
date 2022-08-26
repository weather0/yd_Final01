package com.kcy.notice.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.notice.service.NoticeVo;

public interface NoticeMapper {
	public void NoticeInsert(NoticeVo vo);
	public List<Map<String, String>> NoticeList(String id);
}
