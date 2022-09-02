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
import com.kcy.lecture.mapper.RoomMapper;
import com.kcy.lecture.mapper.ScheduleMapper;
import com.kcy.lecture.service.ClassScheduleVO;
import com.kcy.lecture.service.CourseVO;
import com.kcy.lecture.service.EnrolmentService;
import com.kcy.lecture.service.EnrolmentVO;
import com.kcy.lecture.service.LectureService;
import com.kcy.lecture.service.LectureVO;
import com.kcy.lecture.service.OpenLectureVO;
import com.kcy.lecture.service.RoomVO;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class LectureController {

	@Autowired
	CourseMapper mapper;
	@Autowired ScheduleMapper scmapper;
	@Autowired RoomMapper rmapper;
	private final LectureService lectureService;
	private final EnrolmentService enrolmentService;
	@Value("${spring.servlet.multipart.location}")
	String filePath;




	Logger logger = LoggerFactory.getLogger(LectureController.class);
	
	//강좌신청 form 보여주는 페이지
	@GetMapping("/lectureinsert")
	public String letureInsertPage(LectureVO vo) {
		
		return "pages/classMgr/LectureInsert";
	}
	
	//실제 강좌신청이 처리되는 부분
	@PostMapping("/lectureinsert")
	public String letureInsert(LectureVO vo, @RequestParam("classFileSyl") MultipartFile classFileSyl, Model model) throws IllegalStateException, IOException {
		
		logger.info(vo.toString());
		
		//파일 업로드 하는 부분
		
			if(!classFileSyl.isEmpty()) {
				FileDto dto = new FileDto(UUID.randomUUID().toString(),
						classFileSyl.getOriginalFilename(),
						classFileSyl.getContentType());
				String fileName = dto.getUuid() + "_" + dto.getFileName();
				String oriFileName = classFileSyl.getOriginalFilename();
				File newFileName = new File(fileName);
				classFileSyl.transferTo(newFileName);
				vo.setClassSylOriginal(oriFileName);
				vo.setClassSyl(fileName);
			}				
			
			lectureService.lectureInsert(vo);
		
		return "redirect:lecturelist";
	}
	
	//첨부파일 다운로드 처리하는 부분
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
	

	//교과목 테이블에서 필요한 데이터 model로 보내는 부분
	@ModelAttribute("course")
	public List<CourseVO> getCourseId(Principal principal,CourseVO vo){
		vo.setUserId(principal.getName());
		return mapper.getCourse(vo);
	}


	  @ModelAttribute("schedule") 
	  public List<ClassScheduleVO> getScheduleDay(ClassScheduleVO vo){
		  return scmapper.getScheduleDays(vo);
	  
	  }
	  
	  @ModelAttribute("room") 
	  public List<RoomVO> getRoomId(RoomVO vo){
		 
		  return rmapper.getRoomId(vo);
	  }
	
	//강좌신청 승인하는 페이지
	@GetMapping("/lecturelist")
	public String letureList(Model model,ClassScheduleVO vo) {
		model.addAttribute("ltrList",lectureService.lectureList(null));
		return "pages/classMgr/LectureList";
	}


	
	
	@PostMapping("/lectureupdate")
	public String letureUpdate(LectureVO vo) {
		//강좌신청 승인 하면 업데이트 후 수강신청목록 테이블로 추가하는 부분
		lectureService.lectureUpdate(vo);
		return "redirect:lecturelist" ;
	}
	
	
	
	
	//수강신청 페이지 보여주는 부분
	@GetMapping("/openlecturelist")
	public String openletureList(Model model, Principal principal,EnrolmentVO vo,OpenLectureVO vo1 ) {
		//섹션이 갖고 있는 userId를 vo에 실어서 보냄
		vo.setUserId(principal.getName());
		vo1.setUserId(principal.getName());
		
		//한 페이지에서 수강신청과 수강신청완료 페이지를 보여주기 위해서 두 데이터를 같이 넘긴다
		//gradesCheck는 총 학점을 체크하기 위한 데이터를 보내는 부분
		model.addAttribute("openList",lectureService.openLectureList(vo1));
		model.addAttribute("enrolmentlist", enrolmentService.enrolmentList(vo));
		model.addAttribute("gradesCk",enrolmentService.gradesCheck(vo));
		return "pages/classMgr/OpenLectureList";
	}
	
	//수강신청페이지에서 수강신청완료 테이블로 데이터 추가하는 부분
	@PostMapping("/openlectureinsert")
	@ResponseBody
	public boolean openlectureInsert(EnrolmentVO vo) {
		
		enrolmentService.enrolmentInsert(vo);
		return true;
	}
	
	
	
	//수강신청완료 테이블에서 수강 취소시에  데이터를 삭제하는 부분이다
	@RequestMapping("/enrolmentdelete")
	@ResponseBody
	public boolean openlectureDelete(EnrolmentVO vo) {
		enrolmentService.enrolmentDelete(vo);
		return true;
	}
	
	@GetMapping("/schedulelist")
	@ResponseBody
	public List<ClassScheduleVO> schedulelist(Model model,ClassScheduleVO vo) {
		model.addAttribute("list",scmapper.selectschedule(vo));
		return scmapper.selectschedule(vo);
	}
	
	@PostMapping("/scheduleinsert")
	@ResponseBody
	public boolean scheduleInsert(Model model,ClassScheduleVO vo) {
			
		scmapper.scheduleInsert(vo);
		return true;
	}

}
