package com.kcy.mentoring.career.vo;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class CareerProfVO {
	//교수가 작성한 진로탐색 정보
	private String careerListId; // 검사목록코드
	private String majorId; // 전공코드
	private String profId; //교수 교번
	private String userId; //교수 교번
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private String careerListDate; //문항 등록 일자
	private String careerQId; // 문항코드
	private String careerQContent; //문항 내용
	private String careerQYn; //문항 사용 여
}

