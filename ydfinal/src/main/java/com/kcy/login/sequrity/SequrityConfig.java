package com.kcy.login.sequrity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.kcy.login.mapper.UserServiceImpl;

import lombok.RequiredArgsConstructor;

// 황하경 220831
@EnableWebSecurity
@RequiredArgsConstructor
public class SequrityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    UserServiceImpl userServiceImpl;

    @Override
	protected void configure(HttpSecurity http) throws Exception{
		http
			.authorizeRequests()
			.antMatchers("/login", "/check/findPw").permitAll()
			
			// 9.1.추가: 곽ㅈㅇ
			.antMatchers(
                        "/stuAcaInfo", 
                        "/stuAcaInsert",
                        "/stuInfo",
                        "/payList",
                        "/billCheck",
                        "/openlecturelist",
                        "/matchingChange",
                        "/careerSelectList",
                        "/apply"
                        ).hasRole("STU")
			.antMatchers(
                        "/lectureinsert",
                        "/schedule",
                        "/careerInsert",
                        "/careerListInsert",
                        "/applyList"
                        ).hasRole("PROF")
			.antMatchers(
			            "/allAcaInfo", 
                        "/allStuInfo",
                        "/payCheck",
                        "/billsInsert",
                        "/billList",
                        "/billsUpdate",
                        "/billList",
                        "/lecturelist",
                        "/matchingStd",
                        "/matchingList",
                        "/matchingChangeList",
                        "/changeMatching"
                        ).hasRole("ADMIN")
			.antMatchers(
                        "/noticeinsert",
                        "/chat/room",
                        "/room/enter/{roomId}"
                        ).hasAnyRole("STU","PROF")
			.and().exceptionHandling().accessDeniedPage("/")
			//
			
	//		.antMatchers("/userMgr/prof").access("hasRole('ROLE_PROF')")
	//		.antMatchers("/userMgr/stu").access("hasRole('ROLE_STU')")
	//		.antMatchers("/admin").hasAuthority("admin")
			//.anyRequest()
			//.authenticated()
			.and()
		.formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/login_proc")
			.defaultSuccessUrl("/")
			.failureUrl("/denied")
			.usernameParameter("username")
			.passwordParameter("password")
			.and()
		.csrf().disable() // 설정하게 되면 토큰이 나온다
		.logout()
			.logoutUrl("/doLogout")
			.invalidateHttpSession(true)
			.logoutSuccessUrl("/login");
		
		 http.sessionManagement()
         .maximumSessions(5) //세션 최대 허용 수 
         .maxSessionsPreventsLogin(true); // false이면 중복 로그인하면 이전 로그인이 풀린다.
	}

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userServiceImpl).passwordEncoder(passwordEncoder());
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        PasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder;
    }

}
