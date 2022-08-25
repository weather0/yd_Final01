package com.kcy.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.login.service.UserVo;

@Mapper
public interface UserMapper {
	UserVo getUserAccount(String userId);
	UserVo updateUserPassword(String userId, String userPw);
	UserVo findById(String userId);
	boolean userEmailCheck(String userEmail, String userName);
	UserVo findUserByUserId(String userEmail);
	}
