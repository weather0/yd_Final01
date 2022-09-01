package com.kcy.mentoring.counseling.vo;

import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class ApplyVO {
	private String mtrId; // 상담코드 PK
	private String mtrSchId; // 상담가능일정코드 FK
	private String matchingId; // 매칭코드 FK 
	private String mtrCount; 	//상담회차
	private String mtrStatus;	//상담진행현황
	private String mtrCancel;	//변동코드
	
	// 멘토링 ===================
	
	private String matchingDate; 
	private String matchingType; 
	private String stuId;
	private String userName;
	
	//====================================
	
	private String userId;
	private String profId;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private String mtrSchDate;
	private String mtrSchTimecode;
	private String mtrSchStart;
	private String mtrSchEnd;
	
	
	//====================================
	
	private String careerListId;
	private String careerQContent; //문항 내용
	private String careerQId; // 문항코드
	private String careerQResult; // 문항코드
	
	private List<ApplyVO> listVO;
	

}
