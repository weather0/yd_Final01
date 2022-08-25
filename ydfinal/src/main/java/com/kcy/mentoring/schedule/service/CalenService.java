package com.kcy.mentoring.schedule.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.kcy.mentoring.schedule.vo.scheduleVO;

@Repository
public interface CalenService {
	public ArrayList<scheduleVO> calenList();
}