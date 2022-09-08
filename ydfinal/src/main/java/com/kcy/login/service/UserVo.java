package com.kcy.login.service;

import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;
// 황하경 220831
@Data
public class UserVo implements UserDetails {
	
	private String userId;
	private String userType;
	private String userPw;
	private String userEmail;
	private String myName; // 9.7. 곽ㅈㅇ: mybatis와 연동 수정
	private String userSsn;
	private String userSex;
	private String userDept;
	private String userAddr;
	private String userPhone;
	private String userNation;
	
	// join
	private String classId;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return Collections.singletonList(new SimpleGrantedAuthority(this.userType));
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return this.userPw;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.userId;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	
	// 9.6. 곽ㅈㅇ: userName필드 게터 추가. 위에 getUsername이랑 이름 비슷하게 중복돼서 롬복이 자동생성 못한 거?
//    public String getUserName() {
//        return userName;
//    }
}
