package com.kcy.mentoring.career.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.kcy.mentoring.career.vo.CareerProfVO;
@Repository
public interface CareerProfService {
	public String careerList(String id);
	public ArrayList<CareerProfVO> careerSelectList(String id);
	public void careerInsert(CareerProfVO vo);
	public void careerListInsert(String id);
	public void careerDelete(String id);
	public void careerUpdateY(String id);
	public void careerUpdateN(String id);
	

}
