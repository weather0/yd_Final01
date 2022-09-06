package com.kcy.scores.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.scores.mapper.ScoresMapper;
import com.kcy.scores.service.ScoresService;
import com.kcy.scores.service.ScoresVo;

@Service
public class ScoresServiceImpl implements ScoresService {

	@Autowired ScoresMapper map;
	
	@Override
	public List<ScoresVo> lectureList(ScoresVo vo) {
		return map.lectureList(vo);
	}

	@Override
	public List<ScoresVo> scoresSelectList(ScoresVo vo) {
		// TODO Auto-generated method stub
		return map.scoresSelectList(vo);
	}

	@Override
	public void scoresInsert(ScoresVo vo) {
		map.scoresInsert(vo);
	}

	@Override
	public List<ScoresVo> scoresMemberList(ScoresVo vo) {
		return map.scoresMemberList(vo);
	}

	@Override
	public List<ScoresVo> stuScoreList(ScoresVo vo) {
		return map.stuScoreList(vo);
	}

	@Override
	public List<ScoresVo> classScoreList(ScoresVo vo) {
		return map.classScoreList(vo);
	}

	@Override
	public List<ScoresVo> getClassSem(ScoresVo vo) {
		return map.getClassSem(vo);
	}

}
