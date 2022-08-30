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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

//김용현
@Controller
@RequiredArgsConstructor
public class LectureController {

	@Autowired
	CourseMapper mapper;
	private final LectureService LectureService;
	private final EnrolmentService EnrolmentService;
	// 하경
	@Value("${spring.servlet.multipart.location}")
	String filePath;


	Logger logger = LoggerFactory.getLogger(LectureController.class);


	@ModelAttribute("course")
	public List<CourseVO> getDepartments() {

		return mapper.getCourse();
	}
	
	
	// 강좌신청 페이지
	@GetMapping("/lectureinsert")
	public String LetureInsertPage(LectureVO vo) {

		return "pages/classMgr/LectureInsert";
	}
	
	//실제 강좌신청 추가하는 부분
	@PostMapping("/lectureinsert")
	public String LetureInsert(LectureVO vo, @RequestParam("classFileSyl") MultipartFile classFileSyl, Model model)
			throws IllegalStateException, IOException {

		logger.info(vo.toString());
		//첨부파일 업로드 부분
		if (!classFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(), classFileSyl.getOriginalFilename(),
					classFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			File newFileName = new File(fileName);
			classFileSyl.transferTo(newFileName);
			vo.setClassSyl(fileName);
		}

		LectureService.LectureInsert(vo);

		return "redirect:lecturelist";
	}


	//강좌신청 승인 페이지
	@GetMapping("/lecturelist")
	public String letureList(Model model) {
		model.addAttribute("ltrList", LectureService.LectureList(null));
		return "pages/classMgr/LectureList";
	}

	@PostMapping("/lectureupdate")
	@ResponseBody
	public boolean letureUpdate(LectureVO vo) {
		//승인여부 업데이트 후  강좌신청완료 테이블에 추가
		
		LectureService.LectureUpdate(vo);
		
		return true;
		
	}

	@GetMapping("/download")
	public ResponseEntity<Resource> download(@ModelAttribute LectureVO dto) throws IOException {


		Path path = Paths.get(filePath + "/" + dto.getClassSyl());
		String contentType = Files.probeContentType(path);
		HttpHeaders headers = new HttpHeaders();

		headers.setContentDisposition(
				ContentDisposition.builder("attachment").filename(dto.getClassSyl(), StandardCharsets.UTF_8).build());

		headers.add(HttpHeaders.CONTENT_TYPE, contentType);
		Resource resource = new InputStreamResource(Files.newInputStream(path));
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}

	//용현- 수강신청목록 리스트 
	@GetMapping("/openlecturelist")
	public String OpenletureList(Model model, Principal principal, EnrolmentVO vo, OpenLectureVO vo1) {
		vo.setUserId(principal.getName());
		vo1.setUserId(principal.getName());

		model.addAttribute("openList", LectureService.OpenLectureList(vo1));
		model.addAttribute("enrolmentlist", EnrolmentService.EnrolmentList(vo));
		model.addAttribute("credit", EnrolmentService.creitCheck(vo));
		return "pages/classMgr/OpenLectureList";
	}

	
	@PostMapping("/openlectureinsert")
	@ResponseBody
	public boolean OpenlectureInsert(EnrolmentVO vo) {
		//수강신청완료 테이블에 추가 후에 신청인원 업데이트
		EnrolmentService.EnrolmentInsert(vo);
		return true;
	}

	@RequestMapping("/enrolmentdelete")
	@ResponseBody
	public boolean openlectureDelete(EnrolmentVO vo) {
		//수강신청 취소 후에 신청인원 업데이트
		EnrolmentService.EnrolmentDelete(vo);
		return true;
	}

}
