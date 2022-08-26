package com.kcy.mentoring.schedule.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kcy.mentoring.schedule.vo.scheduleVO;

@Repository
public interface CalenMapper {
	List<scheduleVO> calendarSelectList(); // 전체 조회
	scheduleVO calendarSelect(scheduleVO vo);
	// 부서별 select 
	List<scheduleVO> calendarSearchList(String key);
	int calendarInsert(scheduleVO vo); // 일정 추가
	int calendarUpdate(scheduleVO vo); // 일정 수정
	int calendarDelete(scheduleVO vo); // 삭제
	
}