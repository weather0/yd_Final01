package com.kcy.users.controller;

import java.security.Principal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    
    // 기본 인적사항 (모든 사용자)
    @ResponseBody
    @RequestMapping("/userInfo")
    public Map<String, String> userInfo(Principal principal) {
        return service.userInfo(principal.getName());
    }
    
    // 본인 학적 조회
    @RequestMapping("/stuInfo")
    public String stuInfo(Model model, Principal principal) {
        model.addAttribute("myInfo", service.stuInfo(principal.getName()));
        return "pages/userMgr/stu/stuInfo";
    }

    // 본인 학적 변동 이력
    @RequestMapping("/stuAcaInfo")
    public String stuAcaInfo(Model model, Principal principal) {
        model.addAttribute("myAcaInfos", service.stuAcaInfo(principal.getName()));
        return "pages/userMgr/stu/stuAcaInfo";
    }
    
    // 학적변동 이력 상세보기(단순 페이지 이동)
    @RequestMapping("/stuAcaView")
    public String stuAcaView() {
        return "pages/userMgr/stu/stuAcaView";
    }
    
    // 본인 학적 변동 신청 폼
    @RequestMapping("/stuAcaInsert")
    public String stuAcaInsert(Model model, Principal principal) {
        model.addAttribute("myAcaInfos", service.stuAcaInfo(principal.getName()));
        model.addAttribute("terms", service.stuAcaInsertForm());
        return "pages/userMgr/stu/stuAcaInsert";
    }
    
    // 본인 학적 변동 신청 실행
    @RequestMapping("/stuAcaInsertProc")
    public String stuAcaInsertProc(@RequestParam Map<String, String> map) {
        service.stuAcaInsertProc(map);
        return "redirect:stuAcaInfo";
    }
    
    // 본인 학적 변동 신청 삭제
    @RequestMapping("/stuAcaDelete")
    public String stuAcaDelete(String acaId) {
        service.stuAcaDelete(acaId);
        return "redirect:stuAcaInfo";
    }
    
    // 전체 학생 학적 변동 이력 (행정)
    @RequestMapping("/allAcaInfo")
    public String allAcaInfo(Model model) {
        model.addAttribute("allAcaInfos", service.allAcaInfo());
        return "pages/userMgr/admin/allAcaInfo";
    };
    
    // 학적 변동 신청 승인 (행정)
    @RequestMapping("/stuAcaAdmit")
    public String stuAcaAdmit(String acaId) {
        service.stuAcaAdmit(acaId);
        return "redirect:allAcaInfo";
    }
    
    // 학적 변동 신청 반려 (행정)
    @ResponseBody
    @RequestMapping("/stuAcaReject")
    public void stuAcaReject(@RequestParam Map<String, String> map) {
        service.stuAcaReject(map);
        // ajax 요청은 어차피 redirect가 안먹히므로 @ResponseBody를 달고 void로 처리한다(페이지 이동은 뷰에서 href로)
    }
    
    // 학적 변동 확정 취소 (행정)
    @RequestMapping("/stuAcaAdmitCancel")
    public String stuAcaAdmitCancel(String acaId) {
        service.stuAcaAdmitCancel(acaId);
        return "redirect:allAcaInfo";
    }

}
