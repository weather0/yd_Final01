package com.kcy.mentoring.career.vo;

import lombok.Data;

@Data
public class CareerStuduntVO {
	//학생이 작성한진로탐색 결과
	private String careerHId; //학생이 응답을 하면 그 응답지에 코드가부여
	private String userId; // 학생의 학번
	private String careerHDate; // 응답일자
	private String careerQId; // 문항에 하나에 대한 코드
	private String careerQResult; // 응답내용
}
