package com.kcy.bill.service;

import lombok.Data;

@Data
public class BillsVO {
	private String billId;
	private int billYear;
	private int billSem;
	private int billAmount;
	private String majorId;
	private String majorbId;	
	private String majorName;
	private String pId;
	private String billType;
}
