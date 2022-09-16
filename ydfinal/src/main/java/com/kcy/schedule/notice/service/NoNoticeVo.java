package com.kcy.schedule.notice.service;

import java.util.Date;


import lombok.Data;
@Data
public class NoNoticeVo {
	private String NoticeId; 
	private String NoticeTitle;
	private String NoticeContent;
	private String NoticeDate;
	private String NoticeUpdateDate;
	private int NoticeHit;


	
	public NoNoticeVo() {}

}
