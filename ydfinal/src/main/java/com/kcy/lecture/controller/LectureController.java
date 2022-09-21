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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kcy.file.test.FileDto;
import com.kcy.lecture.mapper.CourseMapper;
import com.kcy.lecture.mapper.LectureMapper;
import com.kcy.lecture.mapper.MajorMapper;
import com.kcy.lecture.mapper.RoomMapper;
import com.kcy.lecture.mapper.ScheduleMapper;
import com.kcy.lecture.mapper.TimetableMapper;
import com.kcy.lecture.service.ClassScheduleVO;
import com.kcy.lecture.service.CourseVO;
import com.kcy.lecture.service.EnrolmentService;
import com.kcy.lecture.service.EnrolmentVO;
import com.kcy.lecture.service.LectureService;
import com.kcy.lecture.service.LectureVO;
import com.kcy.lecture.service.MajorVO;
import com.kcy.lecture.service.OpenLectureVO;
import com.kcy.lecture.service.RoomVO;
import com.kcy.lecture.service.TimetableVO;
import com.kcy.lecture.service.Impl.ScheduleServiceImpl;
import com.kcy.mentoring.schedule.vo.scheduleVO;

import lombok.RequiredArgsConstructor;

@Controller
public class LectureController {

	@Autowired
	CourseMapper cmapper;
	@Autowired
	ScheduleMapper scmapper;
	@Autowired
	ScheduleServiceImpl scheduleservice;
	@Autowired
	RoomMapper rmapper;
	@Autowired
	MajorMapper majormapper;
	@Autowired
	LectureMapper mapper;

	@Autowired
	TimetableMapper tmapper;

	@Autowired
	LectureService lectureService;
	@Autowired
	EnrolmentService enrolmentService;

	String filePath;

	Logger logger = LoggerFactory.getLogger(LectureController.class);

	// 교과목 테이블에서 필요한 데이터 model로 보내는 부분
	@ModelAttribute("course")
	public List<CourseVO> getCourseId(Principal principal, CourseVO vo) {
		vo.setUserId(principal.getName());
		return cmapper.getCourse(vo);
	}

	// 기준이 되는 모든 강의 시간표를 보내는 부분
	@ModelAttribute("schedule")
	public List<ClassScheduleVO> getScheduleDay(ClassScheduleVO vo) {
		return scmapper.getScheduleDays(vo);

	}

	// 학교에 모든 강의실에 데이터를 보내는 부분
	@ModelAttribute("room")
	public List<RoomVO> getRoomId(RoomVO vo) {

		return rmapper.getRoomId(vo);
	}

	// 전공 이름 데이터를 보내는 부분
	@ModelAttribute("major")
	public List<MajorVO> getMajor() {

		return majormapper.majorlist();
	}

	// 강좌신청 form 보여주는 페이지
	@GetMapping("/lectureinsert")
	public String letureInsertPage(LectureVO vo) {

		return "pages/classMgr/prof/LectureInsert";
	}

	// 실제 강좌신청이 처리되는 부분
	@PostMapping("/lectureinsert")
	public String letureInsert(LectureVO vo, @RequestParam("classFileSyl") MultipartFile classFileSyl, Model model)
			throws IllegalStateException, IOException {

		logger.info(vo.toString());

		// 파일 업로드 하는 부분

		if (!classFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(), classFileSyl.getOriginalFilename(),
					classFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			String oriFileName = classFileSyl.getOriginalFilename();
			File newFileName = new File("/aa/", fileName);
			classFileSyl.transferTo(newFileName);
			vo.setClassSylOriginal(oriFileName);
			vo.setClassSyl(fileName);
		}

		lectureService.lectureInsert(vo);

		return "redirect:lectureinsert";
	}

	// 첨부파일 다운로드 처리하는 부분
	@GetMapping("/download")
	public ResponseEntity<Resource> download(@ModelAttribute LectureVO dto) throws IOException {

		System.out.println("ㅎㅇ");
		System.out.println("!!!!!!!!!!" + dto.getClassSyl());
		Path path = Paths.get("/aa/" + dto.getClassSyl());
		String contentType = Files.probeContentType(path);
		HttpHeaders headers = new HttpHeaders();

		headers.setContentDisposition(
				ContentDisposition.builder("attachment").filename(dto.getClassSyl(), StandardCharsets.UTF_8).build());

		headers.add(HttpHeaders.CONTENT_TYPE, contentType);
		Resource resource = new InputStreamResource(Files.newInputStream(path));
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}

	// 강좌신청 승인하는 페이지
	@GetMapping("/lecturelist")
	public String letureList(Model model, ClassScheduleVO vo) {
		model.addAttribute("ltrList", lectureService.lectureList(null));
		return "pages/classMgr/admin/LectureList";
	}

	// 강좌신청 승인 하면 업데이트 후 수강신청목록 테이블로 추가하는 부분
	@PostMapping("/lectureupdate")
	public String letureUpdate(LectureVO vo) {
		lectureService.lectureUpdate(vo);
		return "redirect:lecturelist";
	}

	// 수강신청 페이지 보여주는 부분
	@GetMapping("/openlecturelist")
	public String openletureList(Model model, Principal principal, EnrolmentVO vo, OpenLectureVO vo1, TimetableVO vo2) {
		// 섹션이 갖고 있는 userId를 vo에 실어서 보냄
		vo.setUserId(principal.getName());
		vo1.setUserId(principal.getName());
		vo2.setUserId(principal.getName());

		// 한 페이지에서 수강신청과 수강신청완료 페이지를 보여주기 위해서 두 데이터를 같이 넘긴다
		// gradesCheck는 총 학점을 체크하기 위한 데이터를 보내는 부분
		model.addAttribute("openList", lectureService.openLectureList(vo1));
		model.addAttribute("enrolmentlist", enrolmentService.enrolmentList(vo));
		model.addAttribute("gradesCk", enrolmentService.gradesCheck(vo));
		model.addAttribute("myMajor", mapper.myMajor(vo1));
		model.addAttribute("classMemberTimeCk", tmapper.classMembertimeselect(vo2));
		model.addAttribute("classScheduleCk", scmapper.classFindSchedule(null));
		model.addAttribute("mygrade", mapper.myGrade(vo1));
		return "pages/classMgr/OpenLectureList";
	}

	// 수강신청페이지에서 수강신청완료 테이블로 데이터 추가하는 부분
	@PostMapping("/openlectureinsert")
	@ResponseBody
	public boolean openlectureInsert(EnrolmentVO vo) {

		enrolmentService.enrolmentInsert(vo);
		return true;
	}

	// 수강신청완료 테이블에서 수강 취소시에 데이터를 삭제하는 부분이다
	@RequestMapping("/enrolmentdelete")
	@ResponseBody
	public boolean openlectureDelete(EnrolmentVO vo) {
		enrolmentService.enrolmentDelete(vo);
		return true;
	}

	// 시간 코드에 맞는 강의 시간표 정보를 보여주는 부분
	@GetMapping("/schedulelist")
	@ResponseBody
	public List<ClassScheduleVO> schedulelist(Model model, ClassScheduleVO vo) {
		model.addAttribute("list", scmapper.selectschedule(vo));
		return scmapper.selectschedule(vo);

	}

	// 강좌에 맞는 시간표를 출력
	@GetMapping("/timeselect")
	@ResponseBody
	public List<TimetableVO> timeSelect(Model model, TimetableVO vo) {
		model.addAttribute("classTimeCk", tmapper.classtimeselect(vo));
		return tmapper.classtimeselect(vo);
	}

	// 행정처가 체크한 시간/강의실을 추가하는 부분
	@PostMapping("/scheduleinsert")
	@ResponseBody
	public String scheduleInsert(@RequestBody List<ClassScheduleVO> list) {
		scheduleservice.scheduleAllInsert(list);
		return "true";
	}

	// 행정처에서 시간표를 넣었는지 확인하는 부분
	@PostMapping("/lectureCheck")
	@ResponseBody
	public String lectureCheck(LectureVO vo) {
		scmapper.lectureCheck(vo);
		return "true";
	}

	// 나의 맞는 강의 시간표를 보여주는 페이지
	@GetMapping("/classScheduleSelect")
	public String classScheduleSelect(Model model, Principal principal, ClassScheduleVO vo) {
		vo.setUserId(principal.getName());
		model.addAttribute("scheduleAllSelect", scmapper.classScheduleCk(vo));
		model.addAttribute("scheduleSelect", scmapper.classScheduleSelect(vo));
		return "pages/classMgr/ClassScheduleSelect";
	}

}
