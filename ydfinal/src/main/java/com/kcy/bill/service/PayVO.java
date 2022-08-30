package com.kcy.bill.service;

import java.util.Date;

import lombok.Data;

@Data
public class PayVO {	
	private String payId;
	private String stuId;
	private String billId;
	private int payHTotal;
	private int payHRemain;
	private int payHBal;
	private String payHYn;
	private String payHAcc;
	private int payDAmount;
	private int payDCount;
	private String payDBank;
	private Date payDDay;
	private String userDept;
	private int payHGrade;
	private int payHSem;
	private String studentAcaYn;
	private int billYear;
	private int billSem;
	

}
