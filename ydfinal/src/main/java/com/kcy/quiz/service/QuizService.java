package com.kcy.quiz.service;

import java.util.List;
import java.util.Map;
// 황하경 220831
public interface QuizService {
	public void quizHInsert(QuizVo vo);
	public void quizDInsert(QuizVo vo);
	public List<Map<String, String>> quizList(QuizVo vo);
	public QuizVo quizSelect(int quizHSeq);
	public void quizAccept(QuizVo vo);
	
	public List<Map<String, String>> quizViewList(QuizVo vo);
	public List<QuizVo> quizView(QuizVo vo);
	public void quizPointInsert(QuizVo vo);
	
	public QuizVo quizDetailView(QuizVo vo);
	
	public void quizDUpdate(QuizVo vo);
	public void quizModify(QuizVo vo);
	
	public QuizVo quizAcceptDetail(QuizVo vo);
}
