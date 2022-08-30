package com.kcy.quiz.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.LectureVO;
import com.kcy.quiz.service.QuizVo;

public interface QuizMapper {
	public void QuizHInsert(QuizVo vo);
	public void QuizDInsert(QuizVo vo);
	public List<Map<String, String>> QuizList(QuizVo vo);
	public QuizVo QuizSelect(int quizHSeq);
	public void QuizAccept(QuizVo vo);
	
	public List<Map<String, String>> QuizViewList(QuizVo vo);
	public List<QuizVo> QuizView(QuizVo vo);
	public QuizVo QuizDetailView(QuizVo vo);
	
	public List<QuizVo> getClassId(QuizVo vo);
}
