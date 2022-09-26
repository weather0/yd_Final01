package com.kcy.quiz.service;

import java.sql.Date;

import lombok.Data;
// 황하경 220831
@Data
public class QuizVo {
	private String classId;
	private String stuId;
	private String userId;
	private String userName;
	
	// k_class
	private int classTo;
	
	// k_quiz_h 과제 헤더
	private String quizHTitle;
	private String quizHContent;
	private String quizHOriginal;
	private String quizHFile;
	private String quizHId;
	private String quizHSeq;
	
	// k_quiz_d 과제 목록
	private Date quizDDate;
	private Date quizDOpenday;
	private Date quizDCloseday;
	private String quizDId;
	// private String quizHId;
	
	// k_quiz_r 과제 제출한 사람
	private String quizRContent;
	private Date quizRDate;
	private String quizRFile;
	private String quizROrginal;
	// private String quizDId;
	private int quizRPoint;
	private String classMemberId;
	private String quizRId;
	private String quizDCnt;
	private String rquizDId;
	
	
	// 하경
	private String uuid;
	private String fileName;
	private String contentType;
	private String courseTitle;
	
	public QuizVo() {}
	
	public QuizVo(String uuid, String fileName, String contentType) {
		this.uuid = uuid;
		this.fileName = fileName;
		this.contentType = contentType;
	}	
}
