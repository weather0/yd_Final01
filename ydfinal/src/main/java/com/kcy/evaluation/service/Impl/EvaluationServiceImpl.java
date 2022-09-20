package com.kcy.evaluation.service.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.evaluation.controller.EvaluationController;
import com.kcy.evaluation.mapper.EvaluationMapper;
import com.kcy.evaluation.service.EvaluationService;
import com.kcy.evaluation.service.EvaluationVO;

@Service
public class EvaluationServiceImpl implements EvaluationService {

	@Autowired EvaluationMapper mapper;
	
	@Override
	public List<EvaluationVO> evaluationQuestion(String classId) {
		return mapper.evaluationQuestion(classId);
	}
	
	//교직원 평가를 하면 문항 수에 맞게 평가한 결과를 추가 처리해주는 부분
	@Override
	public void evaluationResultInsert(Map<String,String> map) {
		EvaluationVO vo = new EvaluationVO();
		vo.setClassId(map.get("classId"));
		vo.setClassMemberId(map.get("classMemberId"));
		for(int i=0; i < 7; i++ ) {
			vo.setProfQId("EV100"+ i);
			String ck =	map.get("evaluation"+ i);
			vo.setProfRResult(ck);
			mapper.evaluationResultInsert(vo);
		}
	}

	@Override
	public List<Map<String, String>> profEvaluationList(EvaluationVO vo) {
		
		return mapper.profEvaluationList(vo);
	}


	@Override
	public Object classMemberIdSelect(EvaluationVO vo) {
		
		return mapper.classMemberIdSelect(vo);
	}

	//문항수에 맞게 교직원 평가한 결과를 뽑아 오는 부분
	@Override
	public HashMap<String, Object> evaluationConfirmation(EvaluationVO vo) {
		HashMap<String, Object> check = new HashMap<String, Object>();
		for(int i=0; i< 7; i++) {
			vo.setProfQId("EV100"+i);
			check.put("EV100"+ i, mapper.evaluationConfirmation(vo));
		}
		return check;
		
	}

	@Override
	public List<Map<String, String>> evaluationConfirmationList(EvaluationVO vo) {
		
		return mapper.evaluationConfirmationList(vo);
	}



}
