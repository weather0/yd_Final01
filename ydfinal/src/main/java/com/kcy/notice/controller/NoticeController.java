package com.kcy.notice.controller;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kcy.file.test.FileDto;
import com.kcy.notice.mapper.NoticeMapper;
import com.kcy.notice.service.NoticeService;
import com.kcy.notice.service.NoticeVo;
import com.kcy.quiz.service.QuizVo;

import lombok.RequiredArgsConstructor;

// 황하경 220831
@Controller
@RequiredArgsConstructor
public class NoticeController {
	
	@Autowired
	NoticeMapper map;
	@Autowired
	NoticeService noticeService;
	@Value("${spring.servlet.multipart.location}")
	String filePath;
	
	// 강좌 코드
	@ModelAttribute("classId") 
	public List<NoticeVo> getClassId(Principal principal, NoticeVo vo) {
		vo.setUserId(principal.getName());
		return map.getClassId(vo);
	}
	
	// 강좌 코드
	@ModelAttribute("profClassId") 
	public List<QuizVo> getClassIdProf(Principal principal, QuizVo vo) {
		vo.setUserId(principal.getName());
		return map.getClassIdProf(vo);
	}
	
	// 공지 등록
	@GetMapping("/noticeinsert")
	public String NoticeInsertPage() {
		return "/pages/classMgr/prof/NoticeInsert";
	}
	
	// 공지 등록 프로그램
	@PostMapping("/noticeInsert")
	public String NoticeInsert(NoticeVo vo, @RequestParam("classNoticeFileSyl") MultipartFile classNoticeFileSyl, Model model) throws IllegalStateException, IOException {
		
		if(!classNoticeFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(),
					classNoticeFileSyl.getOriginalFilename(),
					classNoticeFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			String oriFileName = classNoticeFileSyl.getOriginalFilename();
			System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!" + classNoticeFileSyl.getOriginalFilename());
			File newFileName = new File(fileName);
			classNoticeFileSyl.transferTo(newFileName);
			vo.setClassNoticeFile(fileName);
			vo.setClassNoticeOriginal(oriFileName);
		}				
		
		noticeService.noticeInsert(vo);
		
		return "redirect:noticelist";
	}
	
	// 공지 수정
	@GetMapping("/noticemodify")
	public String NoticeModifyPage(Model model, NoticeVo vo, @RequestParam final int classNoticeNo) {
		model.addAttribute("noticeList", noticeService.noticeView(classNoticeNo));
		return "/pages/classMgr/prof/Noticemodify";
	}
	
	// 공지 수정 프로그램
	@PostMapping("/noticeModify")
	public String NoticeModify(NoticeVo vo, @RequestParam("classNoticeFileSyl") MultipartFile classNoticeFileSyl, Model model) throws IllegalStateException, IOException {
			
		if(!classNoticeFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(),
					classNoticeFileSyl.getOriginalFilename(),
					classNoticeFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			String oriFileName = classNoticeFileSyl.getOriginalFilename();
			System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!" + classNoticeFileSyl.getOriginalFilename());
			File newFileName = new File(fileName);
			classNoticeFileSyl.transferTo(newFileName);
			vo.setClassNoticeFile(fileName);
			vo.setClassNoticeOriginal(oriFileName);
		}				
		
		noticeService.noticeModify(vo);
		
		return "redirect:noticelist";
	}
	
	// 공지 목록
	@GetMapping("/noticelist")
	public String noticelist(Model model, Principal principal, NoticeVo vo) {
		vo.setUserId(principal.getName());
		System.out.println("!!!!!!!!!!!!!!!!!" + vo.getClassId());
		System.out.println("!!!!!!!!!!!!!!!!!!!!!" + vo.getClassNoticeType());
		model.addAttribute("noticeList", noticeService.noticeList(vo));
		return "/pages/classMgr/noticeList";
	}
	
	// 공지 상세 보기
	@GetMapping("/noticeview")
	public String noticeview(@RequestParam final int classNoticeNo, Model model) {
		NoticeVo vo = noticeService.noticeView(classNoticeNo);
		model.addAttribute("noticeList", vo);
		return "/pages/classMgr/NoticeView";
	}
	
	// 파일 다운로드
	@GetMapping("/noticedownload")
	public ResponseEntity<Resource> download(@ModelAttribute NoticeVo dto) throws IOException {

		Path path = Paths.get(filePath + "/" + dto.getClassNoticeFile());
		String contentType = Files.probeContentType(path);
		HttpHeaders headers = new HttpHeaders();
		
		headers.setContentDisposition(ContentDisposition.builder("attachment").
				filename(dto.getClassNoticeFile(), StandardCharsets.UTF_8)
				// 수정
				.build());
	
		headers.add(HttpHeaders.CONTENT_TYPE, contentType);
		Resource resource = new InputStreamResource(Files.newInputStream(path));
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}

}
