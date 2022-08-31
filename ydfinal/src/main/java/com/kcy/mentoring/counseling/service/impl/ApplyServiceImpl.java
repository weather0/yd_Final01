package com.kcy.mentoring.counseling.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kcy.mentoring.counseling.mapper.ApplyMapper;
import com.kcy.mentoring.counseling.service.ApplyService;
import com.kcy.mentoring.counseling.vo.ApplyVO;

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
	@Transactional
	public void applyInsert(ApplyVO vo) {
		map.applyHistoryInsert(vo);
		map.applyListInsert(vo.getUserId());
		for (ApplyVO vo1 : vo.getListVO()) { // 서비스에서 
			map.applyInsert(vo1);
		}
	}
	
	@Override
	public void applyListInsert(String id) {
		map.applyListInsert(id);
	}
	@Override
	public void applyHistoryInsert(ApplyVO vo) {
		map.applyHistoryInsert(vo);
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

	@Override
	public List<ApplyVO> applyList(String id) {
		
		return map.applyList(id);
	}


	

}
