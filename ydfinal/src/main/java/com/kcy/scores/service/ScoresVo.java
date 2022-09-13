package com.kcy.scores.service;

import lombok.Data;

@Data
public class ScoresVo {
	// 공통
	private String userId;
	
	// k_scores
	private String scoreId;
	private String classMemberId;
	private int scoreAttn;
	private int scoreQuiz;
	private int scoreMid;
	private int scoreFinal;
	private int total;
	private int stuCtn;
	
	// k_gpa
	private String gpaId;
	private Double gpaPoint;
	private String gpaGrade;
	
	// k_gpa_standard
	private Double gpaStandardAttn;
	private Double gpaStandardQuiz;
	private Double gpaStandardMid;
	private Double gpaStandardFinal;
	
	// k_credit
	private int creditTotal;
	private int creditMajor;
	private int creditLib;
	private Double creditAcquire;
	
	// join
	private String courseTitle;
	private String courseType;
	private String courseCredit;
	
	private String classId;
	private int classCk;
	private int classTo;
	private int classYear;
	private int classSem;
	
	private String userName;
	private String stuId;
	private String userDept;
	
	private int quizRPoint;
	
	private int studentGrade;
	private int studentSem;
	private String studentAcaYn;
	
	
	
	
}
