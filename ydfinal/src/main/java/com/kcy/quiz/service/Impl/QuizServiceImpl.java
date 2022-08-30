package com.kcy.quiz.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.quiz.mapper.QuizMapper;
import com.kcy.quiz.service.QuizService;
import com.kcy.quiz.service.QuizVo;

@Service
public class QuizServiceImpl implements QuizService {

	@Autowired QuizMapper map;


	@Override
	public List<Map<String, String>> QuizList(QuizVo vo) {
		return map.QuizList(vo);
	}

	@Override
	public void QuizHInsert(QuizVo vo) {
		map.QuizHInsert(vo);
		
	}

	@Override
	public void QuizDInsert(QuizVo vo) {
		map.QuizDInsert(vo);	
	}

	@Override
	public void QuizAccept(QuizVo vo) {
		map.QuizAccept(vo);
		
	}

	@Override
	public QuizVo QuizSelect(int quizHSeq) {
		return map.QuizSelect(quizHSeq);
	}

}
