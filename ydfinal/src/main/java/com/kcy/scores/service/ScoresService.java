package com.kcy.scores.service;

import java.util.List;


public interface ScoresService {
	public List<ScoresVo> lectureList(ScoresVo vo); 
	public List<ScoresVo> scoresSelectList(ScoresVo vo);
	public List<ScoresVo> scoresMemberList(ScoresVo vo);
	public void scoresInsert(ScoresVo vo);
	public List<ScoresVo> stuScoreList(ScoresVo vo);
	public List<ScoresVo> classScoreList(ScoresVo vo);
	public List<ScoresVo> getClassSem(ScoresVo vo);
}
