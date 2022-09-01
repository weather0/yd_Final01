package com.kcy.evaluation.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.evaluation.service.EvaluationVO;

public interface EvaluationMapper {

	
	public List<EvaluationVO> evaluationQuestion(String classId);
	public void evaluationResultInsert(EvaluationVO vo);
	public List<Map<String,String>> profEvaluationList(EvaluationVO vo);
	public Object classMemberIdSelect(EvaluationVO vo);
	public List<EvaluationVO> evaluationConfirmation(EvaluationVO vo);
	public List<Map<String,String>> evaluationConfirmationList(EvaluationVO vo);
	
}
