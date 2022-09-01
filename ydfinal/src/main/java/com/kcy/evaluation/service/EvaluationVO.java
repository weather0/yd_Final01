package com.kcy.evaluation.service;

import java.util.Date;

import lombok.Data;

@Data
public class EvaluationVO {

	private String classId;
	private String profRResult;
	private Date profRDate;
	private String profQId;
	private String classMemberId;
	private String profQContent;
	private String userId;
	private int cnt;
	
	
	
	
}
