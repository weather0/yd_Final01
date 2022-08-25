package com.kcy.lecture.service;

import lombok.Data;

@Data
public class LectureVO {
	
	private String classId;
	private String courseId;
	private String userId;
	private int classTo;
	private int classYear;
	private int classSem;
	private String classSyl;
	private String classYn;
	private String classTitle;

}
