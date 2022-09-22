package com.kcy.schedule.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public List<Map<?, ?>> allSchProc(String schType, String schSubType) {
        List<Map<?, ?>> list = service.allSchProc(schType, schSubType);
        return list;
    };
    
    // 학사 일정 등록 (행정)
    @ResponseBody
    @RequestMapping("/allSchInsert")
    public void allSchInsert(@RequestParam Map<?, ?> map) {
        service.allSchInsert(map);
    };
    
    // 학사 일정 수정 (행정)
    @ResponseBody
    @RequestMapping("/allSchUpdate")
    public void allSchUpdate(@RequestParam Map<?, ?> map) {
        service.allSchUpdate(map);
    };
    
    // 학사 일정 삭제 (행정)
    @ResponseBody
    @RequestMapping("/allSchDelete")
    public void allSchDelete(String schUuid) {
        System.out.println(schUuid);
        service.allSchDelete(schUuid);
    };
    

}