package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.TimetableVO;

public interface TimetableMapper {

	//강좌에 맞는 시간표를 보여주는 부분
    public List<TimetableVO> classtimeselect(TimetableVO vo);
    
    //수강신청한 유저가 갖고 있는 시간표를 넘겨주는 부분
    public List<TimetableVO> classMembertimeselect(TimetableVO vo);
}
