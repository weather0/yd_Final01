package com.kcy.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kcy.users.mapper.UsersMapper;

@Controller
public class UsersController {
	@Autowired
	UsersMapper mapper;

//	@RequestMapping("/user")   
//	@ResponseBody
//	public List<UserVO> userList(UserVO vo) {
//		
//		return mapper.userList(vo);
//	}
	
	
	@RequestMapping("/stuInfo")   
	public String stuInfo(Model model, String id) {
	    model.addAttribute("myInfo", mapper.stuInfo(id));
	    return "pages/userMgr/studentInfo";

	}

}
