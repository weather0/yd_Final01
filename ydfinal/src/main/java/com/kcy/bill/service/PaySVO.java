package com.kcy.bill.service;

import lombok.Data;

@Data
public class PaySVO {
	private String payId;
	private int balance;	
	private int advance;
	private int amount;
	private int split;
	private String bank;
	private String sel;
}
