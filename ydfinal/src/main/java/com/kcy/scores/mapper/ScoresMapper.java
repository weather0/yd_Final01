package com.kcy.scores.mapper;

import java.util.List;

import com.kcy.scores.service.ScoresVo;

public interface ScoresMapper {
	public List<ScoresVo> lectureList(ScoresVo vo); 
	public List<ScoresVo> scoresSelectList(ScoresVo vo);
	public List<ScoresVo> scoresMemberList(ScoresVo vo);
	public void scoresInsert(ScoresVo vo);
	public List<ScoresVo> stuScoreList(ScoresVo vo);
	public List<ScoresVo> classScoreList(ScoresVo vo);
}
