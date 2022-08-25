package com.kcy.matching.service;

import java.util.List;

public interface MatchingService {	
	public List<MatchingListVO> matchingList(MatchingListVO vo);
	public List<MatchingStdVO> matchingStdList(MatchingStdVO vo); 
	public List<MatchingProfVO> matchingProfList(MatchingProfVO vo); 
	public void matching(MatchingVO vo);
	public void matchingStd(MatchingVO vo);
}
