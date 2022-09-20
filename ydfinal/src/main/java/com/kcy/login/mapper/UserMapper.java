package com.kcy.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.login.service.UserVo;
// 황하경 220831
@Mapper
public interface UserMapper {
	
	// 로그인 sql
	public UserVo getUserAccount(String userId);
	// 임시 비밀번호로 변경
	public void updateUserPassword(UserVo vo);
	public UserVo findById(String userId);
	// 사용자가 입력한 email이 db에 존재하는지 확인
	public boolean userEmailCheck(String userEmail, String userName);
	public UserVo findUserByUserId(String userEmail);
	// 사용자가 입력한 새로운 pw를 업데이트
	public UserVo userChangePw(String userEmail);
	public void changePwUpdate(UserVo vo);
	}