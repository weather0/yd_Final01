package com.kcy.bill.service;

import lombok.Data;

@Data
public class BillsVO {
	private String billId;
	private int billYear;
	private int billSem;
	private int billAmount;
	private String majorId;
}
