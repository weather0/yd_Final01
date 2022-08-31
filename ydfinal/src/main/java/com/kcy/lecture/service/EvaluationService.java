package com.kcy.lecture.service;

import java.util.List;
import java.util.Map;

public interface EvaluationService {

	public List<EvaluationVO> evaluationQuestion(String classId);
	public void evaluationResultInsert(Map<String,String> map );
	public List<Map<String,String>> profEvaluationList(EvaluationVO vo);

}
