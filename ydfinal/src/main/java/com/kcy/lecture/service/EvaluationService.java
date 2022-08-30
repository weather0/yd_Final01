package com.kcy.lecture.service;

import java.util.List;
import java.util.Map;

public interface EvaluationService {

	public List<EvaluationVO> evaluationQuiz(String classId);
	public void evaluationSubmission(Map<String,String> map );
	public List<Map<String,String>> evaluationSelectList(EvaluationVO vo);

}
