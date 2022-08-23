package com.kcy.login.sequrity;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.kcy.login.mapper.UserService;

import lombok.RequiredArgsConstructor;

@EnableWebSecurity
@RequiredArgsConstructor
public class SefurityConfig extends WebSecurityConfigurerAdapter  {
	private final UserService  userService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		http
			.authorizeRequests()
			.antMatchers("/login", "/access_denied", "/resources/**").permitAll()
			.antMatchers("/userAccess").hasRole("학생")
			.antMatchers("/userAccess").hasRole("교수")
			.antMatchers("/userAccess").hasRole("행정")
			.and()
		.formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/login_proc")
			.defaultSuccessUrl("/user_access")
			.failureUrl("/access_denied")
			.and()
		.csrf().disable();
	}
	
    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userService).passwordEncoder(new BCryptPasswordEncoder());
    }
	
}
