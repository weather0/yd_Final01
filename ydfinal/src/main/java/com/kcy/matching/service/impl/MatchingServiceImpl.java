package com.kcy.matching.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.matching.mapper.MatchingMapper;
import com.kcy.matching.service.MatchingChangeListVO;
import com.kcy.matching.service.MatchingChangeVO;
import com.kcy.matching.service.MatchingListVO;
import com.kcy.matching.service.MatchingProfVO;
import com.kcy.matching.service.MatchingService;
import com.kcy.matching.service.MatchingStdVO;
import com.kcy.matching.service.MatchingVO;

@Service
public class MatchingServiceImpl implements MatchingService {
	
	@Autowired MatchingMapper mapper;

	@Override
	public List<MatchingListVO> matchingList(MatchingListVO vo) {
		return mapper.matchingList(vo);
	}

	@Override
	public List<MatchingStdVO> matchingStdList(MatchingStdVO vo) {
		return mapper.matchingStdList(vo);
	}

	@Override
	public List<MatchingProfVO> matchingProfList(MatchingProfVO vo) {		
		return mapper.matchingProfList(vo);
	}

	@Override
	public void matching(MatchingVO vo) {
		mapper.matching(vo);
	}

	@Override
	public void matchingStd(MatchingVO vo) {
		mapper.matchingStd(vo);
		
	}

	@Override
	public void matchingChangeOrder(MatchingChangeVO vo) {		
		mapper.matchingChangeOrder(vo);
	}

	@Override
	public List<MatchingProfVO> matchingChangeList(MatchingChangeListVO vo) {		
		return mapper.matchingChangeList(vo);
	}

	@Override
	public List<MatchingChangeVO> matchingName(MatchingStdVO vo) {
		return mapper.matchingName(vo);
	}

	@Override
	public void matchingType(MatchingVO vo) {
		mapper.matchingType(vo);
		
	}

	@Override
	public void matchingYes(MatchingVO vo) {
		mapper.matchingYes(vo);
		
	}

	@Override
	public void matchingNo(MatchingChangeVO vo) {
		mapper.matchingNo(vo);	
	}

}
