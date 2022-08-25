package com.kcy.matching.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.matching.service.MatchingListVO;
import com.kcy.matching.service.MatchingProfVO;
import com.kcy.matching.service.MatchingStdVO;
import com.kcy.matching.service.MatchingVO;

@Mapper
public interface MatchingMapper {
	public List<MatchingListVO> matchingList(MatchingListVO vo);
	public List<MatchingStdVO> matchingStdList(MatchingStdVO vo);
	public List<MatchingProfVO> matchingProfList(MatchingProfVO vo);
	public void matching(MatchingVO vo);
	public void matchingStd(MatchingVO vo);
}
