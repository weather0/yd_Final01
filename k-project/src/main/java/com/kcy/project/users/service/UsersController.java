package com.kcy.project.users.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kcy.project.users.mapper.UsersMapper;
import com.kcy.project.vo.UsersVO;

import lombok.extern.slf4j.Slf4j;

@RestController
@CrossOrigin("*")
public class UsersController {
	@Autowired
	UsersMapper mapper;

	@RequestMapping("/users")   
	public List<UsersVO> usersList(UsersVO vo) {
		
		
		return mapper.usersList(vo);
	}
	
}
