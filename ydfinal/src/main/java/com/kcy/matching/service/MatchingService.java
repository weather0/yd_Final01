package com.kcy.matching.service;

import java.util.List;

import com.kcy.bill.service.MajorbVO;

public interface MatchingService {	
	public List<MatchingListVO> matchingList(MatchingListVO vo);
	public List<MatchingStdVO> matchingStdList(MatchingStdVO vo); 
	public List<MatchingProfVO> matchingProfList(MatchingProfVO vo);
	public List<MatchingProfVO> matchingChangeList(MatchingChangeListVO vo);
	public List<MatchingChangeVO> matchingName(MatchingStdVO vo);
	public List<MatchingChangeVO> changeProgress(MatchingChangeVO vo);
	public List<MajorbVO> majorbList(MajorbVO vo);
	public void matching(MatchingVO vo);
	public void matchingStd(MatchingVO vo);
	public void matchingChangeOrder(MatchingChangeVO vo);
	public void matchingType(MatchingVO vo);
	public void matchingYes(MatchingVO vo);
	public void matchingNo(MatchingChangeVO vo);
	public void changeStatus(MatchingStdVO vo);
	public void changeCancel(MatchingChangeVO vo);
}
