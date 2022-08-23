package com.kcy.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kcy.project.vo.UsersVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class UsersController {
	@Autowired
	UsersMapper mapper;

	@RequestMapping("/users")
	public List<UsersVO> usersList() {
		
		log.info("xxx", mapper.usersList());
		
		return mapper.usersList();
	}
	
}
