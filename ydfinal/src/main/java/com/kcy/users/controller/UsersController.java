package com.kcy.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kcy.users.mapper.UsersMapper;
import com.kcy.users.service.UsersService;

/*
 * 작성자: 곽주엽
 * 작성일자: 8.24.
 * 내용: 사용자 정보 화면
 * 수정일자.내용: 8.26.stuInfo(학적조회) 경로 수정, stuAcaInfo(학적변동이력) 추가
 */

@Controller
public class UsersController {
    @Autowired
    UsersService service;

    @RequestMapping("/stuInfo/{id}")
    public String stuInfo(Model model, @PathVariable String id) {
        model.addAttribute("myInfo", service.stuInfo(id));
        return "pages/userMgr/stu/stuInfo";
    }

    @RequestMapping("/stuAcaInfo/{id}")
    public String stuAcaInfo(Model model, @PathVariable String id) {
        model.addAttribute("myAcaInfos", service.stuAcaInfo(id));
        return "pages/userMgr/stu/stuAcaInfo";
    }
    
    @RequestMapping("/stuAcaInsert/{id}")
    public String stuAcaInsert(Model model, @PathVariable String id) {
        model.addAttribute("myInfo", service.stuInfo(id));
        model.addAttribute("terms", service.stuAcaInsert());
        return "pages/userMgr/stu/stuAcaInsert";
    }

}
