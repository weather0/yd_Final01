package com.kcy.matching.service;

import lombok.Data;

@Data
public class MatchingProfVO {	
	private String userId;
	private String userName;
	private String profField;
	private String profLab;
	private int mentee;
}