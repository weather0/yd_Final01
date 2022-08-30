package com.kcy.lecture.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.lecture.mapper.EvaluationMapper;
import com.kcy.lecture.service.EvaluationService;
import com.kcy.lecture.service.EvaluationVO;

@Service
public class EvaluationServiceImpl implements EvaluationService {

	@Autowired EvaluationMapper mapper;
	
	@Override
	public List<EvaluationVO> evaluationQuiz(String classId) {
		return mapper.evaluationQuiz(classId);
	}

	@Override
	public void evaluationSubmission(Map<String,String> map) {
		EvaluationVO vo = new EvaluationVO();
		vo.setClassId(map.get("classId"));
		vo.setClassMemberId(map.get("classMemberId"));
		for(int i=0; i < 7; i++ ) {
			vo.setProfQId("EV100"+ i);
			String ck =	map.get("evaluation"+ i);
			vo.setProfRResult(ck);
			mapper.evaluationSubmission(vo);
		}
	}

	@Override
	public List<Map<String, String>> evaluationSelectList(EvaluationVO vo) {
		
		return mapper.evaluationSelectList(vo);
	}

}
