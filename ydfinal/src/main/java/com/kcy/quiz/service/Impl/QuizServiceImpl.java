package com.kcy.quiz.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kcy.quiz.mapper.QuizMapper;
import com.kcy.quiz.service.QuizService;
import com.kcy.quiz.service.QuizVo;
// 황하경 220831
@Service
public class QuizServiceImpl implements QuizService {

	@Autowired QuizMapper map;


	@Override
	public List<Map<String, String>> quizList(QuizVo vo) {
		return map.quizList(vo);
	}

	@Override
	@Transactional
	public void quizHInsert(QuizVo vo) {
		map.quizHInsert(vo);
		map.quizDInsert(vo);
	}

	@Override
	public void quizDInsert(QuizVo vo) {
		map.quizDInsert(vo);	
	}

	@Override
	public void quizAccept(QuizVo vo) {
		map.quizAccept(vo);
		
	}

	@Override
	public QuizVo quizSelect(int quizHSeq) {
		return map.quizSelect(quizHSeq);
	}

	@Override
	public List<Map<String, String>> quizViewList(QuizVo vo) {
		return map.quizViewList(vo);
	}

	@Override
	public List<QuizVo> quizView(QuizVo vo) {
		return map.quizView(vo);
	}

	@Override
	public QuizVo quizDetailView(QuizVo vo) {
		return map.quizDetailView(vo);
	}

	@Override
	public void quizPointInsert(QuizVo vo) {
		map.quizPointInsert(vo);
	}

	@Override
	public void quizDUpdate(QuizVo vo) {
		map.quizDUpdate(vo);
		
	}

	@Override
	public void quizModify(QuizVo vo) {
		map.quizModify(vo);
	}

	@Override
	public QuizVo quizAcceptDetail(QuizVo vo) {
		return map.quizAcceptDetail(vo);
	}

	@Override
	public List<QuizVo> getClassIdProf(QuizVo vo) {
		return map.getClassIdProf(vo);
	}

	@Override
	public void scoreQuizInsert(QuizVo vo) {
		map.scoreQuizInsert(vo);
		
	}

}
