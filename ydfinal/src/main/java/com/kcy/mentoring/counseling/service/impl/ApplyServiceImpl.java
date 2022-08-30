package com.kcy.mentoring.counseling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.mentoring.counseling.mapper.ApplyMapper;
import com.kcy.mentoring.counseling.service.ApplyService;
import com.kcy.mentoring.counseling.vo.ApplyVO;
import com.kcy.mentoring.schedule.vo.scheduleVO;

@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	ApplyMapper map;

	@Override
	public List<ApplyVO> applySelectList(String id) {
		return map.applySelectList(id);
	}

	@Override
	public List<ApplyVO> applySelect(String id) {
		return map.applySelect(id);
	}

	@Override
	public void applyInsert(List<ApplyVO> list) {
		for (ApplyVO vo : list) { // 서비스에서 
			map.applyInsert(vo);
		}
	}

	@Override
	public void applyUpdate(ApplyVO vo) {
		map.applyUpdate(vo);
	}

	@Override
	public void applyDelete(ApplyVO vo) {
		map.applyDelete(vo);
	}

	@Override
	public String applyCheck(String id) {
		return map.applyCheck(id);
	}

	public void applyListInsert(String id) {
		map.applyListInsert(id);
	}

	

}
