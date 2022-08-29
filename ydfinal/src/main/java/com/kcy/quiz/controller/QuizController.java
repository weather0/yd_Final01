package com.kcy.quiz.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
}
