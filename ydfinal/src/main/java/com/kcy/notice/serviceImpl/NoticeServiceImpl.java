package com.kcy.notice.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.notice.mapper.NoticeMapper;
import com.kcy.notice.service.NoticeService;
import com.kcy.notice.service.NoticeVo;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired NoticeMapper map;
	
	@Override
	public void NoticeInsert(NoticeVo vo) {
		map.NoticeInsert(vo);
		
	}

	@Override
	public List<Map<String, String>> NoticeList(String id) {
		// TODO Auto-generated method stub
		return map.NoticeList(id);
	}
	
}
