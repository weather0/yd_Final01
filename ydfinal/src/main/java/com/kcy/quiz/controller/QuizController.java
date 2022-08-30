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
	public String QuizInsert(QuizVo vo, @RequestParam("classQuizFileSyl") MultipartFile classQuizFileSyl, Model model, Principal principal) throws IllegalStateException, IOException {
		
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
		quizService.QuizHInsert(vo);
		
		return "redirect:quizlist";
	}
	
	@ModelAttribute("classId") 
	public List<QuizVo> getClassId(Principal principal, QuizVo vo) {
		vo.setUserId(principal.getName());
		return map.getClassId(vo);
	}
	
	@GetMapping("/quizlist")
	public String quizlist(Model model, QuizVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("quizlist", quizService.QuizList(vo));
		return "pages/quizMgr/quizlist";
	}
	
	// 과제 목록(교수)
	@GetMapping("/quizviewlist")
	public String quizviewlist(Model model, QuizVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("quizviewlist", quizService.QuizViewList(vo));
		return "pages/quizMgr/prof/quizviewlist";
	}
	
	@GetMapping("/quizview")
	public String quizview(@RequestParam(value = "quizHSeq") int quizHSeq, Model model, QuizVo vo, Principal principal) {
		model.addAttribute("quizview", quizHSeq);
		model.addAttribute("quiz", map.QuizView(vo));
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + vo.getUserName());
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + quizHSeq);
		return "pages/quizMgr/prof/quizview";
	}
	
	@GetMapping("/quizdetailview")
	public String quizDetailView(@RequestParam final String quizRId, Model model, QuizVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("quiz", quizService.QuizDetailView(vo));
		quizService.QuizDetailView(vo);
		return "pages/quizMgr/prof/quizdetailview";
	}

	
	@GetMapping("/quizaccept")
	public String quizacceptPage(@RequestParam final int quizHSeq, Model model, QuizVo vo, Principal principal) {
		vo.setUserId(principal.getName());
		model.addAttribute("quizlist", quizService.QuizSelect(quizHSeq));
		return "pages/quizMgr/quizaccept";
	}
	
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
			vo.setQuizRFile(fileName);
			vo.setQuizROrginal(oriFileNmae);
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
