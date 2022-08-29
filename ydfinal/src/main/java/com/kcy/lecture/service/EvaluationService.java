package com.kcy.lecture.service;

import java.util.List;

public interface EvaluationService {

	public List<EvaluationVO> EvaluationQuiz(EvaluationVO vo);
	public void EvaluationSubmission(EvaluationVO vo);
}
