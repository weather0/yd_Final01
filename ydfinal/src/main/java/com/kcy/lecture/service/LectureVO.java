package com.kcy.lecture.service;

import lombok.Data;

@Data
public class LectureVO {
	
	private String classRegId;
	private String courseId;
	private String userId;
	private int classRegTo;
	private int classRegYear;
	private int classRegSem;
	private String classRegSyl;
	private String classRegYn;
	private String classRegTitle;

}
