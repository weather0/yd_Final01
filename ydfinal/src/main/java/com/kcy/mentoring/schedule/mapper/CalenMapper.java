package com.kcy.mentoring.schedule.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.kcy.mentoring.schedule.vo.scheduleVO;

@Repository
public interface CalenMapper {
	public ArrayList<scheduleVO> calenList();
}