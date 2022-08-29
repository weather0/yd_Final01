package com.kcy.matching.service;

import java.util.Date;

import lombok.Data;

@Data
public class MatchingChangeVO {
	private String stuId;
	private String matchingChangeYn;
	private Date matchingChangeDate;
	private String matchingChangeReject;
	private String profId;
	private String matchingChangeReason;
	private String matchingWant;	
}
