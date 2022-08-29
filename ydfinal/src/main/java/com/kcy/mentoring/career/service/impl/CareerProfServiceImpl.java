package com.kcy.mentoring.career.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.kcy.mentoring.career.mapper.CareerProfMapper;
import com.kcy.mentoring.career.service.CareerProfService;
import com.kcy.mentoring.career.vo.CareerProfVO;

public class CareerProfServiceImpl implements CareerProfService {

	@Autowired 
	CareerProfMapper profMppar;
	
	@Override
	public ArrayList<CareerProfVO> careerList() {
		// TODO Auto-generated method stub
		return profMppar.careerList();
	}
	@Override
	public ArrayList<CareerProfVO> careerSelectList(String id) {
		// TODO Auto-generated method stub
		return profMppar.careerSelectList(id);
	}

	@Override
	public String careerInsert(CareerProfVO vo) {
		// TODO Auto-generated method stub
		return profMppar.careerInsert(vo);
	}

	@Override
	public String careerDelete(CareerProfVO vo) {
		// TODO Auto-generated method stub
		return profMppar.careerDelete(vo);
	}

	@Override
	public String careerUpdate(CareerProfVO vo) {
		// TODO Auto-generated method stub
		return profMppar.careerUpdate(vo);
	}

}
