package com.kcy.project.users.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.project.vo.UsersVO;

public interface UsersMapper {
	public List<UsersVO> usersList();

}
