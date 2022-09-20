package com.kcy.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.login.service.UserVo;
// 황하경 220831
@Mapper
public interface UserMapper {
	public UserVo getUserAccount(String userId);
	public void updateUserPassword(UserVo vo);
	public UserVo findById(String userId);
	public boolean userEmailCheck(String userEmail, String userName);
	public UserVo findUserByUserId(String userEmail);
	public UserVo userChangePw(String userEmail);
	public void changePwUpdate(UserVo vo);
	}