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
    public List<Map<?, ?>> allSchProc(String schType) {
        return mapper.allSchProc(schType);
    }

    @Override
    public void allSchInsert(Map<?, ?> map) {
        mapper.allSchInsert(map);
    }

    @Override
    public void allSchUpdate(Map<?, ?> map) {
        mapper.allSchUpdate(map);
    }

    @Override
    public void allSchDelete(String uuid) {
        mapper.allSchDelete(uuid);
    }

}
