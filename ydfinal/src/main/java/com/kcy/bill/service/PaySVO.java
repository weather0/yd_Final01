package com.kcy.bill.service;

import lombok.Data;

@Data
public class PaySVO {
	private String payId;
	private int balance;	
	private int advance;
	private String bank;
}
