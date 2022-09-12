package com.kcy.schedule.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kcy.schedule.service.SchService;

@Controller
public class SchController {
    @Autowired
    SchService service;

    // 학사 일정 (모든 사용자)(단순 페이지 이동)
    @RequestMapping("/allSch")
    public String allSch() {
        return "pages/scheduleMgr/allSch";
    };

    
    // 학사 일정 표시 (모든 사용자)
    @ResponseBody
    @RequestMapping("/allSchProc")
    public List<Map<?, ?>> allSchProc() {
        List<Map<?, ?>> list = service.allSchProc();
        
        return list;
    };

}