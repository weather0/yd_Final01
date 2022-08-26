package com.kcy.notice.service;

import java.util.List;
import java.util.Map;

public interface NoticeService {
	public void NoticeInsert(NoticeVo vo);
	public List<Map<String, String>> NoticeList(String id);
}
