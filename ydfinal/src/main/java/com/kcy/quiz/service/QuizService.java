package com.kcy.quiz.service;

import java.util.List;
import java.util.Map;
// 황하경 220831
public interface QuizService {
	
	// 과제 등록
	public void quizHInsert(QuizVo vo);
	public void quizDInsert(QuizVo vo);
	public void quizModify(QuizVo vo);
	
	// 과제 목록
	public List<Map<String, String>> quizList(QuizVo vo);
	
	// 과제 세부
	public QuizVo quizSelect(int quizHSeq);
	
	// 과제 제출(학생)
	public void quizAccept(QuizVo vo);
	public void quizDUpdate(QuizVo vo);
	public QuizVo quizAcceptDetail(QuizVo vo);
	
	// 과제 제출한 학생 리스트(교수)
	public List<Map<String, String>> quizViewList(QuizVo vo);
	
	// 과제 제출 리스트(교수)
	public List<QuizVo> quizView(QuizVo vo);
	
	// 과제 세부 내용(교수)
	public QuizVo quizDetailView(QuizVo vo);
	
	// 과제 점수 입력(교수)
	public void quizPointInsert(QuizVo vo);
	
	// 공통 코드 classId
	public List<QuizVo> getClassId(QuizVo vo);
	public List<QuizVo> getClassIdProf(QuizVo vo);
	
	
}
