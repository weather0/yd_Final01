package com.kcy.schedule.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.schedule.mapper.SchMapper;
import com.kcy.schedule.service.SchService;
@Service
public class SchServiceImpl implements SchService {
    
    @Autowired SchMapper mapper;
    
    @Override
    public List<Map<?, ?>> allSchProc() {
        return mapper.allSchProc();
    }

    @Override
    public void allSchInsert(Map<?, ?> map) {
        mapper.allSchInsert(map);
    }

}
