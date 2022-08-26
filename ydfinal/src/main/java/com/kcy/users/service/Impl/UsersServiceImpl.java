package com.kcy.users.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.users.mapper.UsersMapper;
import com.kcy.users.service.UsersService;
@Service
public class UsersServiceImpl implements UsersService {

    @Autowired UsersMapper mapper;
    
    @Override
    public Map<String, String> stuInfo(String id) {
        return mapper.stuInfo(id);
    }

    @Override
    public List<Map<String, String>> stuAcaInfo(String id) {
        return mapper.stuAcaInfo(id);
    }

}
