package com.kcy.users.service;

import java.util.List;
import java.util.Map;

public interface UsersService {
    public Map<String, String> stuInfo(String id);
    public List<Map<String, String>> stuAcaInfo(String id);

}
