package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.EvaluationVO;

public interface EvaluationMapper {

	
	public List<EvaluationVO> EvaluationQuiz(EvaluationVO vo);
	public void EvaluationSubmission(EvaluationVO vo);
}
