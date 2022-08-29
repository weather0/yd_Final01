package com.kcy.lecture.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.lecture.mapper.EvaluationMapper;
import com.kcy.lecture.service.EvaluationService;
import com.kcy.lecture.service.EvaluationVO;

@Service
public class EvaluationServiceImpl implements EvaluationService {

	@Autowired EvaluationMapper mapper;
	
	@Override
	public List<EvaluationVO> EvaluationQuiz(EvaluationVO vo) {
		return mapper.EvaluationQuiz(vo);
	}

	@Override
	public void EvaluationSubmission(EvaluationVO vo) {
		mapper.EvaluationSubmission(vo);
	}

}
