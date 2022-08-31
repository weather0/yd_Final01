package com.kcy.lecture.service.Impl;

import java.util.HashMap;
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
	public List<EvaluationVO> evaluationQuestion(String classId) {
		return mapper.evaluationQuestion(classId);
	}

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

	@Override
	public HashMap<String, Object> evaluationConfirmation(EvaluationVO vo) {
		HashMap<String, Object> check = new HashMap<String, Object>();
		for(int i=0; i< 7; i++) {
			vo.setProfQId("EV100"+i);
			check.put("EV100"+ i, mapper.evaluationConfirmation(vo));
		}
		return check;
		
	}

}
