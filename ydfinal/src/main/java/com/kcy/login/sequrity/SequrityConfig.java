package com.kcy.login.sequrity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import com.kcy.login.service.UserServiceImpl;

import lombok.RequiredArgsConstructor;

// 황하경 220831
@EnableWebSecurity
@RequiredArgsConstructor
@Configuration 
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SequrityConfig extends WebSecurityConfigurerAdapter {
	
	private final AuthenticationFailureHandler customFailureHandler;

    @Autowired
    UserServiceImpl userServiceImpl;

    @Override
	protected void configure(HttpSecurity http) throws Exception{
		http
			.authorizeRequests()
			.antMatchers("/login", "/check/findPw", "/changePw").permitAll()
			
			// 9.1.추가: 곽ㅈㅇ
			.antMatchers(
                        "/stuInfo",
                        "/stuAcaInfo", 
                        "/stuAcaInsert",
                        "/payList",
                        "/billCheck",
                        "/openlecturelist",
                        "/matchingChange",
                        "/scoreview",
                        "/classScore",
                        "/profCheck",
                        "/apply"
                        ).hasRole("STU")
			.antMatchers(
                        "/lectureinsert",
                        "/schedule",
                        "/careerInsert",
                        "/careerListInsert",
                        "/careerSelectList",
                        "/noticeinsert",
                        "/quizinsert",
                        "/quizviewlist",
                        "/applyList"
                        ).hasRole("PROF")
			.antMatchers(
			            "/allAcaInfo", 
                        "/allStuInfo",
                        "/oneStuInfo",
                        "/payCheck",
                        "/billsInsert",
                        "/billList",
                        "/billsUpdate",
                        "/billList",
                        "/lecturelist",
                        "/matchingStd",
                        "/matchingList",
                        "/matchingChangeList",
                        "/changeMatching",
                        "/notice/noticeinsert"
                        ).hasRole("ADMIN")
			.antMatchers(
                        "/chat/room",
                        "/room/enter/{roomId}"
                        ).hasAnyRole("STU","PROF")
			.and().exceptionHandling().accessDeniedPage("/")

			
			//.anyRequest()
			//.authenticated()
			.and()
		.formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/login_proc")
			.defaultSuccessUrl("/")
			//.failureUrl("/denied")
			.failureHandler(customFailureHandler)
			.usernameParameter("username")
			.passwordParameter("password")
			.and()
		.csrf().disable() // 설정하게 되면 토큰이 나온다
		.logout()
			.logoutUrl("/doLogout")
			.invalidateHttpSession(true)
			.deleteCookies("JSESSIONID")
			.logoutSuccessUrl("/login");
		
		 http.sessionManagement()
         .maximumSessions(100) //세션 최대 허용 수 
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
