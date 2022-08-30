package com.kcy.quiz.controller;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import com.kcy.lecture.service.LectureVO;
import com.kcy.quiz.mapper.QuizMapper;
import com.kcy.quiz.service.QuizService;
import com.kcy.quiz.service.QuizVo;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class QuizController {
	@Autowired
	QuizMapper map;
	@Autowired
	QuizService quizService;
	@Value("${spring.servlet.multipart.location}")
	String filePath;
	
	@GetMapping("/quizinsert")
	public String quizInsertPage() {
		return "/pages/quizMgr/prof/quizinsert";
	}

	@PostMapping("/quizInsert")
	public String QuizInsert(QuizVo vo, @RequestParam("classQuizFileSyl") MultipartFile classQuizFileSyl, Model model) throws IllegalStateException, IOException {
		
		if(!classQuizFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(),
					classQuizFileSyl.getOriginalFilename(),
					classQuizFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			File newFileName = new File(fileName);
			classQuizFileSyl.transferTo(newFileName);
			vo.setQuizHFile(fileName);
		}	
		
		quizService.QuizHInsert(vo);
		quizService.QuizDInsert(vo);
		return "redirect:quizlist";
	}
	
	@GetMapping("/quizlist")
	public String quizlist(Model model, QuizVo vo) {
		model.addAttribute("quizlist", quizService.QuizList(vo));
		return "pages/quizMgr/quizlist";
	}
	
	@GetMapping("/quizaccept")
	public String quizacceptPage(@RequestParam final int quizHSeq, Model model, QuizVo vo) {
		model.addAttribute("quizlist", quizService.QuizSelect(quizHSeq));
		return "pages/quizMgr/quizaccept";
	}
	
	@PostMapping("/quizAccept")
	public String quizAccept(QuizVo vo, @RequestParam("classQuizFileSyl") MultipartFile classQuizFileSyl, Model model) throws IllegalStateException, IOException {
		if(!classQuizFileSyl.isEmpty()) {
			FileDto dto = new FileDto(UUID.randomUUID().toString(),
					classQuizFileSyl.getOriginalFilename(),
					classQuizFileSyl.getContentType());
			String fileName = dto.getUuid() + "_" + dto.getFileName();
			File newFileName = new File(fileName);
			classQuizFileSyl.transferTo(newFileName);
			vo.setQuizHFile(fileName);
		}	
		
		quizService.QuizAccept(vo);
		
		return "redirect:quizlist";
	}
	
	@GetMapping("/quizdownload")
	public ResponseEntity<Resource> download(@ModelAttribute QuizVo dto) throws IOException {
		
		System.out.println("ㅎㅇ");
		
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

}
