package com.kcy.mentoring.career.vo;

import lombok.Data;

@Data
public class CareerProfVO {
	//교수가 작성한 진로탐색 정보
	private String careeListId; // 검사목록코드
	private String majorId; // 전공코드
	private String profId; //교수 교번
	private String careeListDate; //문항 등록 일자
	private String careerQId; // 문항코드
	private String careerQContent; //문항 내용
	private String careerQYn; //문항 사용 여
}
