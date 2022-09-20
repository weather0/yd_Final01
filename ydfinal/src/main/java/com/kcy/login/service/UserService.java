package com.kcy.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kcy.login.mapper.UserMapper;

import lombok.RequiredArgsConstructor;


// 220828 황하경
@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class UserService {
	@Autowired 
	UserMapper userMapper;
	@Autowired
	PasswordEncoder passwordEncoder;

	public boolean login(String userId, String userPw) {
		UserVo uservo = userMapper.findById(userId);
		// passwordEncoder에 있는 matches 속성을 사용하여 uservo에 담긴 password와 db값을 비교하여 로그인 처리
		if(passwordEncoder.matches(userPw, uservo.getUserPw())) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean userEmailCheck(String userEmail, String myName) {
		UserVo uservo = userMapper.findUserByUserId(userEmail);
		// uservo에 담긴 name을 비교
		if(uservo != null && uservo.getMyName().equals(myName)) { 
			return true;
		} else {
			return false;
		}
	}
	
}