package com.kcy.matching.service;

import lombok.Data;

@Data
public class MatchingChangeListVO {
	private String stuId;
	private String userName;
	private String userDept;
	private int studentGrade;
	private String studentAcaYn;
	private String prof;
	private String matchingChangeReason;
	private String wantprof;	
}
