package com.kcy.evaluation.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface EvaluationService {

	public List<EvaluationVO> evaluationQuestion(String classId);
	
	public void evaluationResultInsert(Map<String,String> map );
	
	public List<Map<String,String>> profEvaluationList(EvaluationVO vo);
	
	public Object classMemberIdSelect(EvaluationVO vo);
	
	public HashMap<String, Object> evaluationConfirmation(EvaluationVO vo);
	
	public List<Map<String,String>> evaluationConfirmationList(EvaluationVO vo);
}
