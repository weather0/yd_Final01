package com.kcy.quiz.controller;

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
import org.springframework.web.multipart.MultipartFile;

import com.kcy.file.test.FileDto;
import com.kcy.quiz.mapper.QuizMapper;
import com.kcy.quiz.service.QuizService;
import com.kcy.quiz.service.QuizVo;

import lombok.RequiredArgsConstructor;
// 황하경 220831
@Controller
@RequiredArgsConstructor

public class QuizController {
	@Autowired
	QuizMapper map;
	@Autowired
	QuizService quizService;
	@Value("${spring.servlet.multipart.location}")
	String filePath;
	
	// 강좌 코드
	@ModelAttribute("classId") 
	public List<QuizVo> getClassId(Principal principal, QuizVo vo) {
		vo.setUserId(principal.getName());
		return map.getClassId(vo);
	}
	
	// 강좌 코드
	@ModelAttribute("profClassId") 
	public List<QuizVo> getClassIdProf(Principal principal, QuizVo vo) {
		vo.setUserId(principal.getName());
		return map.getClassIdProf(vo);
	}
	
	// 과제 등록(교수)
	@GetMapping("/quizinsert")
	public String quizInsertPage() {
		return "pages/quizMgr/prof/quizinsert";
	}
	
	// 과제 등록(교수) 프로그램
	@PostMapping("/quizInsert")
	public String quizInsert(QuizVo vo, @RequestParam("classQuizFileSyl") MultipartFile classQuizFileSyl, Model model, Principal principal) throws IllegalStateException, IOException {
		
		if(!classQuizFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(),
					classQuizFileSyl.getOriginalFilename(),
					classQuizFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			String oriFileName = classQuizFileSyl.getOriginalFilename();
			File newFileName = new File(fileName);
			classQuizFileSyl.transferTo(newFileName);
			vo.setQuizHOriginal(oriFileName);
			vo.setQuizHFile(fileName);
			vo.setUserId(principal.getName());
		}	
		quizService.quizHInsert(vo);
		
		return "redirect:quizviewlist";
	}
	
	// 과제 목록(학생)
	@GetMapping("/quizlist")
	public String quizlist(Model model, QuizVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("quizlist", quizService.quizList(vo));
		return "pages/quizMgr/quizlist";
	}
	
	// 과제 목록(교수)
	@GetMapping("/quizviewlist")
	public String quizviewlist(Model model, QuizVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("quizviewlist", quizService.quizViewList(vo));
		return "pages/quizMgr/prof/quizviewlist";
	}
	
	// 과제 제출 학생 목록(교수)
	@GetMapping("/quizview")
	public String quizview(@RequestParam(value = "quizHSeq") int quizHSeq, Model model, QuizVo vo, Principal principal) {
		model.addAttribute("quizview", quizHSeq);
		model.addAttribute("quiz", map.quizView(vo));
		return "pages/quizMgr/prof/quizview";
	}
	
	// 과제 점수 등록 페이지(교수)
	@GetMapping("/quizdetailview")
	public String quizPointInsertPage(Model model, QuizVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("quiz", quizService.quizDetailView(vo));
		quizService.quizDetailView(vo);
		return "pages/quizMgr/prof/quizdetailview";
	}
	
	// 과제 점수 등록 페이지 프로그램(교수)
	@PostMapping("/quizdetailview")
	public String quizDetailView(Model model, QuizVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		System.out.println("!!!!!!!!!!!!!!" + vo.getQuizRId());
		quizService.quizPointInsert(vo);
		return "redirect:quizviewlist";
	}

	// 과제 제출(학생)
	@GetMapping("/quizaccept")
	public String quizacceptPage(@RequestParam final int quizHSeq, Model model, QuizVo vo, Principal principal) {
		QuizVo qvo = quizService.quizSelect(quizHSeq);
		vo.setUserId(principal.getName());
		qvo.setUserId(principal.getName());
		model.addAttribute("quizlist", qvo);		
		vo.setQuizDId(qvo.getQuizDId());
		model.addAttribute("quizaccept", quizService.quizAcceptDetail(vo));
		return "pages/quizMgr/quizaccept";
	}
	
	// 과제 제출 프로그램(학생)
	@PostMapping("/quizAccept")
	public String quizAccept(QuizVo vo, @RequestParam("classQuizFileSyl") MultipartFile classQuizFileSyl, @RequestParam("classId") String classId, Principal principal, Model model) throws IllegalStateException, IOException {
		if(!classQuizFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(),
					classQuizFileSyl.getOriginalFilename(),
					classQuizFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			String oriFileNmae = classQuizFileSyl.getOriginalFilename();
			File newFileName = new File(fileName);
			classQuizFileSyl.transferTo(newFileName);
			vo.setUserId(principal.getName());
			vo.setClassId(classId);
			vo.setQuizDCnt(vo.getQuizDId());
			vo.setQuizRFile(fileName);
			vo.setQuizROrginal(oriFileNmae);
		}	
		
		quizService.quizModify(vo);
		quizService.quizAccept(vo);
		quizService.quizDUpdate(vo);
		return "redirect:quizlist";
	}
	
	// 과제 수정 프로그램(학생)
	@PostMapping("/quizModify")
	public String quizModify(QuizVo vo, @RequestParam("classQuizFileSyl") MultipartFile classQuizFileSyl, @RequestParam("classId") String classId, Principal principal, Model model) throws IllegalStateException, IOException {
		if(!classQuizFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(),
					classQuizFileSyl.getOriginalFilename(),
					classQuizFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			String oriFileNmae = classQuizFileSyl.getOriginalFilename();
			File newFileName = new File(fileName);
			classQuizFileSyl.transferTo(newFileName);
			vo.setUserId(principal.getName());
			vo.setClassId(classId);
			vo.setQuizDCnt(vo.getQuizDId());
			vo.setQuizRFile(fileName);
			vo.setQuizROrginal(oriFileNmae);
		}	
		
		quizService.quizModify(vo);
		return "redirect:quizlist";
	}
	
	// 파일 다운로드
	@GetMapping("/quizdownload")
	public ResponseEntity<Resource> download(@ModelAttribute QuizVo dto) throws IOException {
		
		Path path = Paths.get(filePath + "/" + dto.getQuizHFile());
		String contentType = Files.probeContentType(path);
		HttpHeaders headers = new HttpHeaders();
		
		headers.setContentDisposition(ContentDisposition.builder("attachment").
				filename(dto.getQuizHFile(), StandardCharsets.UTF_8)
				.build());
	
		headers.add(HttpHeaders.CONTENT_TYPE, contentType);
		Resource resource = new InputStreamResource(Files.newInputStream(path));
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}
	
	// 파일 다운로드
	@GetMapping("/quizrdownload")
	public ResponseEntity<Resource> rdownload(@ModelAttribute QuizVo dto) throws IOException {
		
		Path path = Paths.get(filePath + "/" + dto.getQuizRFile());
		String contentType = Files.probeContentType(path);
		HttpHeaders headers = new HttpHeaders();
		
		headers.setContentDisposition(ContentDisposition.builder("attachment").
				filename(dto.getQuizRFile(), StandardCharsets.UTF_8)
				.build());
	
		headers.add(HttpHeaders.CONTENT_TYPE, contentType);
		
		Resource resource = new InputStreamResource(Files.newInputStream(path));
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}
	
	
	// 파일 다운로드
	@GetMapping("/quizAcceptdownload")
	public ResponseEntity<Resource> download2(@ModelAttribute QuizVo dto) throws IOException {
		
		Path path = Paths.get(filePath + "/" + dto.getQuizRFile());
		String contentType = Files.probeContentType(path);
		HttpHeaders headers = new HttpHeaders();
		
		headers.setContentDisposition(ContentDisposition.builder("attachment").
				filename(dto.getQuizRFile(), StandardCharsets.UTF_8)
				.build());
	
		headers.add(HttpHeaders.CONTENT_TYPE, contentType);
		Resource resource = new InputStreamResource(Files.newInputStream(path));
		return new ResponseEntity<>(resource, headers, HttpStatus.OK);
	}

}
