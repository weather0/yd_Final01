package com.kcy.lecture.service;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class LectureVO {
	
	private String classId;
	private String courseId;
	private String profId;
	private int classTo;
	private int classYear;
	private String classSem;
	private String classSyl;
	private String classYn;
	private String classTitle;
	private MultipartFile classFileSyl;
	private String courseType;
	private double courseCredit;
	private String courseTitle;
	
	
	// 하경
	private String uuid;
	private String fileName;
	private String contentType;
	
	public LectureVO() {}
	
	public LectureVO(String uuid, String fileName, String contentType) {
		this.uuid = uuid;
		this.fileName = fileName;
		this.contentType = contentType;
		System.out.println(contentType);
	}	

}
