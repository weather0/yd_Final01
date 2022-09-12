package com.kcy.scores.mapper;

import java.util.List;

import com.kcy.quiz.service.QuizVo;
import com.kcy.scores.service.ScoresVo;

public interface ScoresMapper {
	public List<ScoresVo> lectureList(ScoresVo vo); 
	public List<ScoresVo> scoresSelectList(ScoresVo vo);
	public List<ScoresVo> scoresMemberList(ScoresVo vo);
	public void scoresInsert(ScoresVo vo);
	public List<ScoresVo> stuScoreList(ScoresVo vo);
	public List<ScoresVo> classScoreList(ScoresVo vo);
	public List<ScoresVo> getClassSem(ScoresVo vo);
	public void gpaPointInsert(ScoresVo vo);
	public List<ScoresVo> scoresCtn(ScoresVo vo);
	public void scoresAllInsert(List<ScoresVo> list);
}
