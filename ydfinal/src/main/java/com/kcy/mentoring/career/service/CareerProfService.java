package com.kcy.mentoring.career.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.kcy.mentoring.career.vo.CareerProfVO;
@Repository
public interface CareerProfService {
	public ArrayList<CareerProfVO> careerList();
	public ArrayList<CareerProfVO> careerSelectList(String id);
	public String careerInsert(CareerProfVO vo);
	public String careerDelete(CareerProfVO vo);
	public String careerUpdate(CareerProfVO vo);
	

}
