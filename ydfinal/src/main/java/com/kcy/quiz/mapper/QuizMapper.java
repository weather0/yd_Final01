package com.kcy.quiz.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.LectureVO;
import com.kcy.quiz.service.QuizVo;
// 황하경 220831
public interface QuizMapper {
	public void quizHInsert(QuizVo vo);
	public void quizDInsert(QuizVo vo);
	public List<Map<String, String>> quizList(QuizVo vo);
	public QuizVo quizSelect(int quizHSeq);
	public void quizAccept(QuizVo vo);
	
	public List<Map<String, String>> quizViewList(QuizVo vo);
	public List<QuizVo> quizView(QuizVo vo);
	public QuizVo quizDetailView(QuizVo vo);
	public void quizPointInsert(QuizVo vo);
	
	public List<QuizVo> getClassId(QuizVo vo);
	
	public void quizDUpdate(QuizVo vo);
	
	public QuizVo quizAcceptDetail(QuizVo vo);
	public void quizModify(QuizVo vo);
}
