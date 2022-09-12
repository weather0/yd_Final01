package com.kcy.bill.service;

import lombok.Data;

@Data
public class AcocountListVO {
	private String accessToken;
	private String userSeqNo;
	private String includeCancelYn;
	private String sortOrder;
	private String bankTranId;
	private String fintechUseNum;
	private String tranDtime;
}
