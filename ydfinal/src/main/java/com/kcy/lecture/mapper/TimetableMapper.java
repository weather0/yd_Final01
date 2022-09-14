package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.TimetableVO;

public interface TimetableMapper {

    public List<TimetableVO> classtimeselect(TimetableVO vo);
    
    public List<TimetableVO> classMembertimeselect(TimetableVO vo);
}
