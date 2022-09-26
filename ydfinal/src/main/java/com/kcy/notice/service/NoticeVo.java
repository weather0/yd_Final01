package com.kcy.notice.service;

import java.util.Date;

import lombok.Data;
// 황하경 220831
@Data
public class NoticeVo {
	private String classNoticeId; // 게시판 코드
	private String classId; // 강좌마다 있는 게시판
	private int classNoticeNo; // 시퀀스
	private String classNoticeTitle;
	private String classNoticeCon;
	private Date classNoticeDate; // 자동 입력
	private int classNoticeHit; // 조회수...?;
	private String classNoticeFile;
	private String classNoticeOriginal;
	private String classNoticeType;
	
	// join
	private String userName;
	private String profId;
	private String userId;
	private String stuId;
	private String profClassId;
	
	// 하경
	private String uuid;
	private String fileName;
	private String contentType;
	private String courseTitle;
	private String cnRoles;
	
	public NoticeVo() {}
	
	public NoticeVo(String uuid, String fileName, String contentType) {
		this.uuid = uuid;
		this.fileName = fileName;
		this.contentType = contentType;
	}	
}
