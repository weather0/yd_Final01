package com.kcy.lecture.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.EvaluationVO;

public interface EvaluationMapper {

	
	public List<EvaluationVO> evaluationQuestion(String classId);
	public void evaluationResultInsert(EvaluationVO vo);
	public List<Map<String,String>> profEvaluationList(EvaluationVO vo);
}
