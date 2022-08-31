package com.kcy.lecture.service;

import lombok.Data;

@Data
public class OpenLectureVO {
	
	private String classId;
	private String courseId;
	private String profId;
	private String userId;
	private int classTo;
	private int classYear;
	private String classSem;
	private String classSyl;
	private int classCk;
	private String majorName;
	private String userName;
	private String courseType;
	private double courseCredit;
	private String courseTitle;
	
	// 하경
	private String classSylOriginal;
	
}