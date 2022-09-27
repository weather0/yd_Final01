package com.kcy.studentincharge.service;

import java.util.Date;

import lombok.Data;

@Data
public class AttendanceVO {
	
	private String classId;
	private Date classSchDate;
	private String classSchId;
	private String userId;
	private String stuId;
	private String attnType;
	private Date attnDate;
	
}
