package com.kcy.lecture.service;

import lombok.Data;

@Data
public class ClassScheduleVO {

	private String classTimetableId;
	private String classTimetableName;
	private String classTimetableCode;
	private String classTimetableDays;
	private String classTimetableStart;
	private String classTimetableEnd;
	private String classId;
	private String roomId;
	private String scheduleTitle;
	private String userId;
}
