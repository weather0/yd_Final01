package com.kcy.schedule.service;

import java.util.List;
import java.util.Map;

public interface SchService {
    // 학사 일정 표시 (모든 사용자)
    public List<Map<?, ?>> allSchProc(String schType);
    // 학사 일정 등록 (행정)
    public void allSchInsert(Map<?, ?> map);
    // 학사 일정 수정 (행정)
    public void allSchUpdate(Map<?, ?> map);
    // 학사 일정 삭제 (행정)
    public void allSchDelete(String uuid);

}
