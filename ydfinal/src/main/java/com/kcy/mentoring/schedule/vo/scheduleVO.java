package com.kcy.mentoring.schedule.vo;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class scheduleVO {
	private int mtrSchId;
	private String userId;
	private String profId;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private String mtrSchDate;

	private String mtrSchTimecode;
	
	private String mtrSchStart;
	private String mtrSchEnd;
	

}
