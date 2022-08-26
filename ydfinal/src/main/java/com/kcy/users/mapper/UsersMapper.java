package com.kcy.users.mapper;

import java.util.List;
import java.util.Map;

public interface UsersMapper {
    public Map<String, String> stuInfo(String id);
    public List<Map<String, String>> stuAcaInfo(String id);
}
