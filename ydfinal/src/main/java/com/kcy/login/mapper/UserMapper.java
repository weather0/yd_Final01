package com.kcy.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.login.service.UserVo;

@Mapper
public interface UserMapper {
	UserVo getUserAccount(String userId);
	
	void saveUser(UserVo userVo);
}
