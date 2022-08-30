package com.kcy.notice.controller;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
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
import org.springframework.web.multipart.MultipartFile;

import com.kcy.file.test.FileDto;
import com.kcy.notice.mapper.NoticeMapper;
import com.kcy.notice.service.NoticeService;
import com.kcy.notice.service.NoticeVo;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class NoticeController {
	
	@Autowired
	NoticeMapper map;
	@Autowired
	NoticeService noticeService;
	@Value("${spring.servlet.multipart.location}")
	String filePath;
	
	@GetMapping("/noticeinsert")
	public String NoticeInsertPage() {
		return "/pages/classMgr/prof/NoticeInsert";
	}
	
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
		
		noticeService.NoticeInsert(vo);
		
		return "redirect:noticelist";
	}
	
	@GetMapping("/noticelist")
	public String noticelist(Model model, String id, Principal principal, NoticeVo vo) {
		System.out.println(principal.getName());
		vo.setUserId(principal.getName());
		model.addAttribute("noticeList", noticeService.NoticeList(vo));
		return "pages/classMgr/NoticeList";
	}
	
	@GetMapping("/noticeview")
	public String noticeview(@RequestParam final int classNoticeNo, Model model) {
		NoticeVo vo = noticeService.NoticeView(classNoticeNo);
		model.addAttribute("noticeList", vo);
		return "/pages/classMgr/NoticeView";
	}
	
	@GetMapping("/noticedownload")
	public ResponseEntity<Resource> download(@ModelAttribute NoticeVo dto) throws IOException {
		
		System.out.println("ㅎㅇ");
		
		Path path = Paths.get(filePath + "/" + dto.getClassNoticeFile());
		String contentType = Files.probeContentType(path);
		HttpHeaders headers = new HttpHeaders();
		
		headers.setContentDisposition(ContentDisposition.builder("attachment").
				filename(dto.getClassNoticeFile(), StandardCharsets.UTF_8)
				.build());
	
		headers.add(HttpHeaders.CONTENT_TYPE, contentType);
		Resource resource = new InputStreamResource(Files.newInputStream(path));
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}

}
