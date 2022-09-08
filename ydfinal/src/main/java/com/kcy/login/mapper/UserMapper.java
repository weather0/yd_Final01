package com.kcy.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.login.service.UserVo;
// 황하경 220831
@Mapper
public interface UserMapper {
	UserVo getUserAccount(String userId);
	UserVo updateUserPassword(String userId, String userPw);
	UserVo findById(String userId);
	boolean userEmailCheck(String userEmail, String userName);
	public UserVo findUserByUserId(String userEmail);
	}
