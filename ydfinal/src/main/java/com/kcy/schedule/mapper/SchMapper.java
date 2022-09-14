package com.kcy.schedule.mapper;

import java.util.List;
import java.util.Map;

public interface SchMapper {
    // 학사 일정 표시 (모든 사용자)
    public List<Map<?, ?>> allSchProc();
    // 학사 일정 등록 (행정)
    public void allSchInsert(Map<?, ?> map);
}
