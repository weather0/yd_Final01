package com.kcy.matching.service;

import java.util.Date;

import lombok.Data;

@Data
public class MatchingVO {
	private String userId;
	private Date matchingDate;
	private String matchingType;
	private String matchingId;
	private String studentId;
	private String beforeProf;
}
