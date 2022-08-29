package com.kcy.quiz.service;

import java.util.List;
import java.util.Map;

public interface QuizService {
	public void QuizHInsert(QuizVo vo);
	public void QuizDInsert(QuizVo vo);
	public List<Map<String, String>> QuizList(QuizVo vo);
	public QuizVo QuizSelect(int quizHSeq);
	public void QuizAccept(QuizVo vo);
}
