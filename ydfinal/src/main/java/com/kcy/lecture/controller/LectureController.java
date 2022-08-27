package com.kcy.lecture.controller;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kcy.file.test.FileDto;
import com.kcy.lecture.mapper.CourseMapper;
import com.kcy.lecture.service.CourseVO;
import com.kcy.lecture.service.EnrolmentService;
import com.kcy.lecture.service.EnrolmentVO;
import com.kcy.lecture.service.LectureService;
import com.kcy.lecture.service.LectureVO;
import com.kcy.lecture.service.OpenLectureVO;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class LectureController {

	@Autowired
	CourseMapper mapper;
	private final LectureService LectureService;
	private final EnrolmentService EnrolmentService;
	@Value("${spring.servlet.multipart.location}")
	String filePath;
	
	
	Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@GetMapping("/lectureinsert")
	public String LetureInsertPage(LectureVO vo) {
		
		return "pages/classMgr/LectureInsert";
	}
	

	@PostMapping("/lectureinsert")
	public String LetureInsert(LectureVO vo, @RequestParam("classFileSyl") MultipartFile classFileSyl, Model model) throws IllegalStateException, IOException {
		
		logger.info(vo.toString());
		
		
			if(!classFileSyl.isEmpty()) {
				FileDto dto = new FileDto(UUID.randomUUID().toString(),
						classFileSyl.getOriginalFilename(),
						classFileSyl.getContentType());
				String fileName = dto.getUuid() + "_" + dto.getFileName();
				File newFileName = new File(fileName);
				classFileSyl.transferTo(newFileName);
				vo.setClassSyl(fileName);
			}				
			
			LectureService.LectureInsert(vo);
		
		return "redirect:lecturelist";
	}
	
	
	@ModelAttribute("course")
	public List<CourseVO> getDepartments(){
		
		
		return mapper.getCourse();
	}
	
	
	@GetMapping("/lecturelist")
	public String letureList(Model model) {
		model.addAttribute("ltrList",LectureService.LectureList(null));
		return "pages/classMgr/LectureList";
	}
	
	
	@PostMapping("/lectureupdate")
	public String letureUpdate(LectureVO vo) {
		LectureService.LectureUpdate(vo);
		LectureService.LectureInsertClass(vo);
		return "redirect:lecturelist";
	}
	
	@GetMapping("/download")
	public ResponseEntity<Resource> download(@ModelAttribute LectureVO dto) throws IOException {
		
		System.out.println("ㅎㅇ");
		
		Path path = Paths.get(filePath + "/" + dto.getClassSyl());
		String contentType = Files.probeContentType(path);
		HttpHeaders headers = new HttpHeaders();
		
		headers.setContentDisposition(ContentDisposition.builder("attachment").
				filename(dto.getClassSyl(), StandardCharsets.UTF_8)
				.build());
	
		headers.add(HttpHeaders.CONTENT_TYPE, contentType);
		Resource resource = new InputStreamResource(Files.newInputStream(path));
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}

	
	@GetMapping("/openlecturelist")
	public String OpenletureList(Model model, Principal principal) {
		System.out.println(principal.getName());
		EnrolmentVO vo = new EnrolmentVO();
		OpenLectureVO vo1 = new OpenLectureVO();
		vo.setUserId(principal.getName());
		vo1.setUserId(principal.getName());
		model.addAttribute("openList",LectureService.OpenLectureList(vo1));
		model.addAttribute("enrolmentlist", EnrolmentService.EnrolmentList(vo));
		return "pages/classMgr/OpenLectureList";
	}
	
	@PostMapping("/openlectureinsert")
	public String OpenlectureInsert(EnrolmentVO vo) {
		EnrolmentService.TotalPlusUpdate(vo);
		EnrolmentService.EnrolmentInsert(vo);
		return "redirect:openlecturelist";
	}
	
	@RequestMapping("/enrolmentdelete")
	public String openlectureDelete(EnrolmentVO vo) {
		EnrolmentService.TotalMinusUpdate(vo);
		EnrolmentService.EnrolmentDelete(vo);
		return "redirect:openlecturelist";
	}
	
}
