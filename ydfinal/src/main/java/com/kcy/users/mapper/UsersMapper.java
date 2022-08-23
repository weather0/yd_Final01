package com.kcy.users.mapper;

import java.util.List;

import com.kcy.users.service.UsersVO;

public interface UsersMapper {
	public List<UsersVO> usersList(UsersVO vo);
}
