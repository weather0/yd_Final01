package com.kcy.mentoring.career.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.mentoring.career.mapper.CareerProfMapper;
import com.kcy.mentoring.career.service.CareerProfService;
import com.kcy.mentoring.career.vo.CareerProfVO;
@Service
public class CareerProfServiceImpl implements CareerProfService {

	@Autowired 
	CareerProfMapper profMppar;
	
	@Override
	public String careerList(String id) {
	
		return profMppar.careerList(id);
	}
	@Override
	public ArrayList<CareerProfVO> careerSelectList(String id) {
		return profMppar.careerSelectList(id);
	}

	@Override
	public void careerInsert(CareerProfVO vo) {
		 profMppar.careerInsert(vo);
	}
	@Override
	public void careerListInsert(String id) {
		profMppar.careerListInsert(id);
	}

	@Override
	public void careerDelete(String id) {
		 profMppar.careerDelete(id);
	}

	@Override
	public void careerUpdateY(String id) {
		 profMppar.careerUpdateY(id);
	}
	
	@Override
	public void careerUpdateN(String id) {
		profMppar.careerUpdateN(id);
	}

}
