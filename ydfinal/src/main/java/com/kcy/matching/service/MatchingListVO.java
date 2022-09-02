package com.kcy.matching.service;

import java.util.Date;

import lombok.Data;

@Data
public class MatchingListVO {
	private String matchingId;
	private String prName;
	private String prDept;
	private String stName;
	private String stDept;
	private String matchingType;
	private Date matchingDate;
	private String userDept;
	private String stdDept;
	

}
