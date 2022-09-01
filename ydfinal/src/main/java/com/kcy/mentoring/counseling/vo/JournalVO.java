package com.kcy.mentoring.counseling.vo;

import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class JournalVO {
	private String userId;
	private String userName;
	private String mtrId;
	private String mtrLogSubject;
	private String mtrLogContent;
	private String mtrLogComment;
	private String mtrHome;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private String mtrDate;
	private String mtrCount;
	private String mtrStatus;
	
	private List<JournalVO> ListVO;
	

}
