package com.kcy.scores.mapper;

import java.util.List;

import com.kcy.quiz.service.QuizVo;
import com.kcy.scores.service.ScoresVo;
// 220910 황하경
public interface ScoresMapper {
	
	// 리스트 조회
	public List<ScoresVo> lectureList(ScoresVo vo); 
	public List<ScoresVo> scoresSelectList(ScoresVo vo);
	public List<ScoresVo> scoresMemberList(ScoresVo vo);
	public List<ScoresVo> stuScoreList(ScoresVo vo);
	public List<ScoresVo> classScoreList(ScoresVo vo);
	public List<ScoresVo> getClassSem(ScoresVo vo);
	public List<ScoresVo> scoresCtn(ScoresVo vo);
	public List<ScoresVo> AttnCtn(ScoresVo vo);
	
	// 성적 입력
	public void scoresInsert(ScoresVo vo);
	public void gpaPointInsert(ScoresVo vo);
	public void scoresAllInsert(List<ScoresVo> list);
	public ScoresVo standardSelect(ScoresVo vo);
	
}
