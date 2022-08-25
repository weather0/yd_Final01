package com.kcy.mentoring.schedule.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.mentoring.schedule.service.CalenService;
import com.kcy.mentoring.schedule.vo.scheduleVO;

@Service
public class CalenServiceImpl{
	
	@Autowired(required = false)
	private CalenService service;
	
	public ArrayList<scheduleVO> calenList() {
	
		return service.calenList();
	}

}
