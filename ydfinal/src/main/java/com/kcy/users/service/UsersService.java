package com.kcy.users.service;

import java.util.List;
import java.util.Map;

public interface UsersService {
    // 기본 인적사항 (모든 사용자)
    public Map<String, String> userInfo(String id);
    // 전체 학생 학적 목록 (행정)
    public int allStuInfoCnt(Map<?, ?> cri);
    public List<Map<String, String>> allStuInfoProc(Map<?, ?> cri);
    
    // 본인 정보 조회 (교수)
    public Map<String, String> profInfo(String id);
    
    // 본인 학적 조회 (학생)
    public Map<String, String> stuInfo(String id);
    // 본인 학적 변동 이력 (학생)
    public List<Map<String, String>> stuAcaInfo(String id);
    // 본인 학적 변동 신청 폼 (학생)
    public List<Map<String, String>> stuAcaInsertForm();
    // 본인 학적 변동 신청 실행 (학생)
    public void stuAcaInsertProc(Map<String, String> map);
    // 본인 학적 변동 신청 삭제 (학생)
    public void stuAcaDelete(String acaId);
    
    // 학적 변동 신청 단건 조회 (학생, 행정)
    public Map<String, String> stuAcaView(String acaId);
    
    // 전체 학생 학적 변동 이력 (행정)
    public List<Map<String, String>> allAcaInfo();
    // 학적 변동 신청 승인 (행정)
    public void stuAcaAdmit(String acaId);
    // 학적 변동 신청 반려 (행정)
    public void stuAcaReject(Map<String, String> map);
    // 학적 변동 확정 취소 (행정)
    public void stuAcaAdmitCancel(String acaId);
}
