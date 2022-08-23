package com.kcy.project.login.command;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.kcy.project.service.UsersMapper;
import com.kcy.project.vo.UsersVO;

public class LoginIdPwValidator implements UserDetailsService {
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Autowired
	private UsersMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String insertedId) throws UsernameNotFoundException {
		UsersVO user = mapper.getUsersList(insertedId);
		
		if(user == null) {
			return null;
		}
		
		String pw = user.getUserPw();
		String roles = user.getUserType();
		
		return User.builder()
				.username(insertedId)
				.password(pw)
				.roles(roles)
				.build();
	}

}
