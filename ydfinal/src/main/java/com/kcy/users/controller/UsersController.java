package com.kcy.users.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.users.mapper.UsersMapper;
import com.kcy.users.service.UsersVO;

@Controller
public class UsersController {
	@Autowired
	UsersMapper mapper;

	@RequestMapping("/users")   
	@ResponseBody
	public List<UsersVO> usersList(UsersVO vo) {
		
		
		return mapper.usersList(vo);
	}
}
