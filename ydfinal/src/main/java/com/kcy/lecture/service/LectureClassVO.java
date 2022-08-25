package com.kcy.lecture.service;

import lombok.Data;

@Data
public class LectureClassVO {
	
	private String classId;
	private String courseId;
	private String userId;
	private int classTo;
	private int classYear;
	private int classSem;
	private String classSyl;
}
