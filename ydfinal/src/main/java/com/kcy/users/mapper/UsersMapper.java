package com.kcy.users.mapper;

import java.util.List;
import java.util.Map;


public interface UsersMapper {
//	public List<UserVO> userList(UserVO vo);
	
    public Map<String, String> stuInfo(String id);
}
