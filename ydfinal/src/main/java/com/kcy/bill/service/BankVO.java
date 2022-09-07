package com.kcy.bill.service;

import java.util.Date;
import java.util.Map;

import lombok.Data;

@Data
public class BankVO {
	private String accessToken;	
	private String Authorization;	
	private String cntrAccountType;
	private String cntrAccountNum;
	private String wdPassPharse;
	private String wdPrintContent;
	private String nameCheckoption;
	private Date tranDtime;
	private String reqCnt;
	private String reqList;
	private String tranNo;
	private String bankTranId;
	private String fintechUseNum;
	private String printContent;
	private String dpsPrintContent;
	private int tranAmt;
	private String reqClientName;
	private String reqClientNum;
	private String transferPurpose;
	private String token;
	private Map studentToken;
	
}
