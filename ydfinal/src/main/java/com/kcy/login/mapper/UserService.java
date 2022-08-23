package com.kcy.login.mapper;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kcy.login.service.UserVo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService implements UserDetailsService {
	private final UserMapper userMapper;
	
    @Transactional
    public void joinUser(UserVo userVo){
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        userVo.setUserPw(passwordEncoder.encode(userVo.getPassword()));
        userVo.setUserType("학생");
        userMapper.saveUser(userVo);
    }

	
	@Override
	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
        UserVo userVo = userMapper.getUserAccount(userId);
        if (userVo == null){
            throw new UsernameNotFoundException("User not authorized.");
        }
		return userVo;
	} 

}
