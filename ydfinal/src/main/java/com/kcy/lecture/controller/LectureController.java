package com.kcy.lecture.controller;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kcy.file.test.FileDto;
import com.kcy.lecture.mapper.CourseMapper;
import com.kcy.lecture.service.CourseVO;
import com.kcy.lecture.service.LectureService;
import com.kcy.lecture.service.LectureVO;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class LectureController {

	@Autowired CourseMapper mapper;
	private final LectureService LectureService;
	
	
	@Value("${spring.servlet.multipart.location}")
	String filePath;
	
	
	Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	@GetMapping("/letureinsert")
	public String LetureInsertPage(LectureVO vo) {
		
		return "pages/classMgr/LetureInsert";
	}
	
	@PostMapping("/letureinsert")
	public String LetureInsert(LectureVO vo, @RequestParam("classRegSyl") MultipartFile[] classRegSyl, Model model) throws IllegalStateException, IOException {
		
		logger.info(vo.toString());
		LectureService.LectureInsert(vo);
		
		List<FileDto> list = new ArrayList<>();
		for (MultipartFile file : classRegSyl) {
			if(!file.isEmpty()) {
				FileDto dto = new FileDto(UUID.randomUUID().toString(),
						file.getOriginalFilename(),
						file.getContentType());
				list.add(dto);
				File newFileName = new File(dto.getUuid() + "_" + dto.getFileName());
			file.transferTo(newFileName);
			}				
		}
		model.addAttribute("files", list);
		
		return "redirect:leturelist";
	}
	
	
	@ModelAttribute("course")
	public List<CourseVO> getDepartments(){
		
		
		return mapper.getCourse();
	}
	
	
	@GetMapping("/leturelist")
	public String letureList(Model model) {
		model.addAttribute("ltrList",LectureService.LectureList(null));
		return "pages/classMgr/LetureList";
	}
	
	
	@PostMapping("/letureupdate")
	public String letureUpdate(LectureVO vo) {
		LectureService.LectureUpdate(vo);
		LectureService.LectureInsertClass(vo);
		return "redirect:leturelist";
	}
	
	@GetMapping("/download")
	public ResponseEntity<Resource> download(@ModelAttribute FileDto dto) throws IOException {
		
		Path path = Paths.get(filePath + "/" + dto.getUuid() + "_" + dto.getFileName());
		String contentType = Files.probeContentType(path);
		HttpHeaders headers = new HttpHeaders();
		
		headers.setContentDisposition(ContentDisposition.builder("attachment").
				filename(dto.getFileName(), StandardCharsets.UTF_8)
				.build());
	
		headers.add(HttpHeaders.CONTENT_TYPE, contentType);
		Resource resource = new InputStreamResource(Files.newInputStream(path));
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}

}