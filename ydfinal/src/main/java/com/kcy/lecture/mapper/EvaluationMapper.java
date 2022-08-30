package com.kcy.lecture.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.lecture.service.EvaluationVO;

public interface EvaluationMapper {

	
	public List<EvaluationVO> evaluationQuiz(String classId);
	public void evaluationSubmission(EvaluationVO vo);
	
	public List<Map<String,String>> evaluationSelectList(EvaluationVO vo);
}
