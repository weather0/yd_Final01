package com.kcy.lecture.service;

import lombok.Data;

@Data
public class LectureClassVO {
	
	private String classId;
	private String courseId;
	private String userId;
	private int classRegTo;
	private int classRegYear;
	private int classRegSem;
	private String classRegSyl;
}
