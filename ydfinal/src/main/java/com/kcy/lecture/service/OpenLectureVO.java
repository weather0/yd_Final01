package com.kcy.lecture.service;

import lombok.Data;

@Data
public class OpenLectureVO {
	
	private String classId;
	private String courseId;
	private String profId;
	private int classTo;
	private int classYear;
	private int classSem;
	private String classSyl;
	private String classCk;
}
