package com.kcy.login.mapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kcy.login.service.UserVo;

import lombok.RequiredArgsConstructor;

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
		if(passwordEncoder.matches(userPw, uservo.getUserPw())) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean userEmailCheck(String userEmail, String myName) {
		UserVo uservo = userMapper.findUserByUserId(userEmail);
		if(uservo != null && uservo.getMyName().equals(myName)) { 
			return true;
		} else {
			return false;
		}
	}
	
	
	
}