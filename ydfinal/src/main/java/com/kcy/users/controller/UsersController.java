package com.kcy.users.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kcy.common.DataTableVO;
import com.kcy.users.service.UsersService;

@Controller
public class UsersController {
    @Autowired
    UsersService service;

    // 기본 인적사항 (모든 사용자)
    @ResponseBody
    @RequestMapping("/userInfo")
    public Map<String, String> userInfo(Model model,Principal principal) {
    	model.addAttribute("info", service.userInfo(principal.getName()));
        return service.userInfo(principal.getName()); // JSON으로 뿌려줌
    }
    
    
    // 전체 학생 학적 목록 (행정)(단순 페이지 이동)
    @RequestMapping("/allStuInfo")
    public String allStuInfo() {
        return "pages/userMgr/admin/allStuInfo";
    };
    
    @PostMapping(value = "/allStuInfoProc") // (서비스실행) (Datatables Server-side처리 참고: zamezzz.tistory.com/310)
    @ResponseBody 
    public DataTableVO allStuInfoProc(DataTableVO vo, @RequestBody MultiValueMap<String, String> formData){ 
        int draw = Integer.parseInt(formData.get("draw").get(0)); // 필수
        int start = Integer.parseInt(formData.get("start").get(0));  // 현 페이지의 첫 레코드의 순번(전체 레코드 중)
        int length = Integer.parseInt(formData.get("length").get(0)); // 페이지 당 레코드 수
        int order = Integer.parseInt(formData.get("order[0][column]").get(0)); // 정렬칼럼번호
        String orderDir = formData.get("order[0][dir]").get(0); // 정렬방향(오름,내림차순)
        String uType = formData.get("uType").get(0); // 학생,교수 구분
        
        String schId = formData.get("columns[0][search][value]").get(0);
        String schName = formData.get("columns[1][search][value]").get(0);
        String schSsn = formData.get("columns[2][search][value]").get(0);
        String schSex = formData.get("columns[3][search][value]").get(0);
        String schDept = formData.get("columns[4][search][value]").get(0);
        String schPhone = formData.get("columns[5][search][value]").get(0);
        String schEmail = formData.get("columns[6][search][value]").get(0);
        String schAddr = formData.get("columns[7][search][value]").get(0);
        String schNation = formData.get("columns[8][search][value]").get(0);
        
        System.out.println(formData);
        System.out.println(start + " ▶ 현 페이지의 첫 레코드 순번(전체 레코드 중)");
        System.out.println(length + " ▶ 페이지 당 레코드 수");
        System.out.println(order + ", " + orderDir + " ▶ 정렬칼럼");
        System.out.println(uType + " ▶ 유저구분" );
        
        // Map에 담기
        Map<String, Comparable> cri = new HashMap<String, Comparable>();
        cri.put("start", start);
        cri.put("length", length);
        cri.put("order", order);
        cri.put("orderDir", orderDir);
        cri.put("uType", uType);
        
        cri.put("schId", schId);
        cri.put("schName", schName);
        cri.put("schSsn", schSsn);
        cri.put("schSex", schSex);
        cri.put("schDept", schDept);
        cri.put("schPhone", schPhone);
        cri.put("schEmail", schEmail);
        cri.put("schAddr", schAddr);
        cri.put("schNation", schNation);
        
        // 서비스 실행
        int total = (int)service.allStuInfoCnt(cri); 
        List<?> data = service.allStuInfoProc(cri); 

        vo.setDraw(draw);
        vo.setRecordsFiltered(total);
        vo.setRecordsTotal(total);
        vo.setData(data);

        return vo; 
    }
    
    
    
    // 전체 교수 목록 (행정)(단순 페이지 이동)
    @RequestMapping("/allProfInfo")
    public String allProfInfo() {
        return "pages/userMgr/admin/allProfInfo";
    };
    
   
    // 본인 정보 조회 (교수)
    @RequestMapping("/profInfo")
    public String profInfo(Model model, Principal principal) {
        model.addAttribute("myInfo", service.profInfo(principal.getName()));
        return "pages/userMgr/prof/profInfo";
    }
    
    // 단일 교수 조회 (행정)
    @RequestMapping("/oneProfInfo")
    public String oneProfInfo(Model model, String id) {
        model.addAttribute("myInfo", service.profInfo(id));
        return "pages/userMgr/prof/profInfo";
    }
    
    
    
    
    // 본인 학적 조회 (학생)
    @RequestMapping("/stuInfo")
    public String stuInfo(Model model, Principal principal) {
        model.addAttribute("myInfo", service.stuInfo(principal.getName()));
        return "pages/userMgr/stu/stuInfo";
    }
    
    // 단일 학적 조회 (행정)
    @RequestMapping("/oneStuInfo")
    public String oneStuInfo(Model model, String id) {
        model.addAttribute("myInfo", service.stuInfo(id));
        return "pages/userMgr/stu/stuInfo";
    }

    // 본인 학적 변동 이력 (학생)
    @RequestMapping("/stuAcaInfo")
    public String stuAcaInfo(Model model, Principal principal) {
        model.addAttribute("myAcaInfos", service.stuAcaInfo(principal.getName()));
        return "pages/userMgr/stu/stuAcaInfo";
    }
    
    // 본인 학적 변동 신청 폼 (학생)
    @RequestMapping("/stuAcaInsert")
    public String stuAcaInsert(Model model, Principal principal) {
        model.addAttribute("myAcaInfos", service.stuAcaInfo(principal.getName()));
        model.addAttribute("terms", service.stuAcaInsertForm());
        return "pages/userMgr/stu/stuAcaInsert";
    }

    // 본인 학적 변동 신청 실행 (학생)
    @RequestMapping("/stuAcaInsertProc")
    public String stuAcaInsertProc(@RequestParam Map<String, String> map, MultipartFile acaFile) throws Exception {
        // 파일이 존재하면
        if (!acaFile.isEmpty()) {
            // 저장파일명(난수활용)
            int ran = (int) (Math.random() * 9000) + 1000;
            String fileName = map.get("id") + "_" + ran + "_" + acaFile.getOriginalFilename();
            
            // 파일 저장
            File saveFile = new File("/aa/", fileName);
            acaFile.transferTo(saveFile);
            
            // map에 추가하고 서비스로 넘김
            map.put("fileName", fileName);
            service.stuAcaInsertProc(map);
        } else {
            service.stuAcaInsertProc(map);
        }
        
        return "redirect:stuAcaInfo";
    }

    // 본인 학적 변동 신청 삭제 (학생)
    @RequestMapping("/stuAcaDelete")
    public String stuAcaDelete(String acaId, String acaFile) {
        // 첨부파일 삭제
        File file = new File("/aa/", acaFile);
        System.out.println(file);
        file.delete();
        
        // DB삭제
        service.stuAcaDelete(acaId);
        return "redirect:stuAcaInfo";
    }

    
    
    
    

    // 학적 변동 신청 단건 조회 (학생, 행정)
    @RequestMapping("/stuAcaView")
    public String stuAcaView(Model model, String acaId) {
        model.addAttribute("aca", service.stuAcaView(acaId));
        return "pages/userMgr/stu/stuAcaView";
    }
    
    // 학적변동 첨부파일 다운로드 (학생, 행정)
    @RequestMapping("/stuAcaDownload")
    public void download(HttpServletRequest request, HttpServletResponse response, String acaFile) throws Exception {
        try {
//            String encodedFileName = EncodeFileName.getEncodedFileName(acaFile, EncodeFileName.getBrowser(request));
//            System.out.println(encodedFileName);
            System.out.println(acaFile);
            
            String path = "/aa/" + acaFile;
            System.out.println(path);
            
            File file = new File(path);
            // downFileName: 다운창에 표시되는 이름. 한글변환(URLEncoder.encode), '+'문자를 공백(%20)으로 변환
            String downFileName = URLEncoder.encode(file.getName().substring(14,file.getName().length()),"UTF-8").replaceAll("\\+", "%20");
            response.setHeader("Content-Disposition", "attachment;filename=" + downFileName); // 다운로드 되거나 로컬에 저장되는 용도로 쓰이는지를 알려주는 헤더
            
            FileInputStream fileInputStream = new FileInputStream(path); // 파일 읽어오기 
            OutputStream out = response.getOutputStream();
            
            int read = 0;
                byte[] buffer = new byte[1024];
                while ((read = fileInputStream.read(buffer)) != -1) { // 1024바이트씩 계속 읽으면서 outputStream에 저장, -1이 나오면 더이상 읽을 파일이 없음
                    out.write(buffer, 0, read);
                }
        } catch (Exception e) {
            throw new Exception("download error");
        }
    }
    
    
    
    // 전체 학생 학적 변동 이력 (행정)
    @RequestMapping("/allAcaInfo")
    public String allAcaInfo(Model model) {
        model.addAttribute("allAcaInfos", service.allAcaInfo());
        return "pages/userMgr/admin/allAcaInfo";
    }

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
