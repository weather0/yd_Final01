package com.kcy.project.login.command;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

public class SequrityConfig extends WebSecurityConfigurerAdapter  {
	private UserDetailsService loginIdPwValidator;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
				.antMatchers("/chk").permitAll()
				.anyRequest().authenticated()
			.and()
				.formLogin()
				.loginPage("/views/test2")
				.loginProcessingUrl("/loginProc")
				.usernameParameter("userId")
				.passwordParameter("userPw")
				.defaultSuccessUrl("views/test1", true)
				.permitAll()
			.and()
				.logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/logoutProc"));
	}
	
	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(loginIdPwValidator);
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("");
	}
}
