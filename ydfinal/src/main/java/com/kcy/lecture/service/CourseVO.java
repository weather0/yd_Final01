package com.kcy.lecture.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class CourseVO {

	private String majorId;
	private String courseId;
	private String courseTitle;
	private String courseContent;
	private String courseType;
	private int courseCredit;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date courseOpenday;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date courseCloseday;
	
}
