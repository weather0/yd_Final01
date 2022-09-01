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

    @Override
    public List<Map<String, String>> stuAcaInsertForm() {
        return mapper.stuAcaInsertForm();
    }

    @Override
    public void stuAcaInsertProc(Map<String, String> map) {
        mapper.stuAcaInsertProc(map);
    }

    @Override
    public void stuAcaDelete(String acaId) {
        mapper.stuAcaDelete(acaId);
    }

    @Override
    public List<Map<String, String>> allAcaInfo() {
        return mapper.allAcaInfo();
    }

    @Override
    public void stuAcaAdmit(String acaId) {
        mapper.stuAcaAdmit(acaId);
    }

    @Override
    public void stuAcaReject(Map<String, String> map) {
        mapper.stuAcaReject(map);
    }

    @Override
    public void stuAcaAdmitCancel(String acaId) {
        mapper.stuAcaAdmitCancel(acaId);
    }

}
