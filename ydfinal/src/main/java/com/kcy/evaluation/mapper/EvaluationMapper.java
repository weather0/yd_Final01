package com.kcy.evaluation.mapper;

import java.util.List;
import java.util.Map;

import com.kcy.evaluation.service.EvaluationVO;

public interface EvaluationMapper {

	
	//평가 목록을 불러오는 부분
	public List<EvaluationVO> evaluationQuestion(String classId);
	
	//평가한 결과를 추가하는 부분
	public void evaluationResultInsert(EvaluationVO vo);
	
	//학생이 강좌에 맞는 교직원 평가를 할 수 있게 보여주는 부분
	public List<Map<String,String>> profEvaluationList(EvaluationVO vo);
	
	//classMemberId를 검색하는 부분
	public Object classMemberIdSelect(EvaluationVO vo);
	
	//교수가 자신에 평가결과를 보는 부분
	public List<Map<String,String>> evaluationConfirmationList(EvaluationVO vo);
	
	//chart를 이용하여 평가 결과를 보여주는 부분
	public List<EvaluationVO> evaluationConfirmation(EvaluationVO vo);
	
}
