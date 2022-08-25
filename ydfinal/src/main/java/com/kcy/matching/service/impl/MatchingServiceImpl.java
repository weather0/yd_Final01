package com.kcy.matching.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.matching.mapper.MatchingMapper;
import com.kcy.matching.service.MatchingService;
import com.kcy.matching.service.MatchingStdVO;
import com.kcy.matching.service.MatchingVO;
import com.kcy.matching.service.MatchingListVO;
import com.kcy.matching.service.MatchingProfVO;

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

}
