package com.kcy.project.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.project.vo.UsersVO;
@Mapper
public interface UsersMapper {
	public List<UsersVO> usersList();
	
	public UsersVO login(UsersVO vo);
	public void UsersInsert(UsersVO vo);

	public UsersVO getUsersList(String insertedId);

}



