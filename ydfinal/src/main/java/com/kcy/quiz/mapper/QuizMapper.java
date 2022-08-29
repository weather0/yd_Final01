package com.kcy.quiz.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.quiz.service.QuizVo;

public interface QuizMapper {
	public void QuizHInsert(QuizVo vo);
	public void QuizDInsert(QuizVo vo);
	public List<Map<String, String>> QuizList(QuizVo vo);
	public QuizVo QuizSelect(int quizHSeq);
	public void QuizAccept(QuizVo vo);
}
