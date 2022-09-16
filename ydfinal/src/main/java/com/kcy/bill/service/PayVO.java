package com.kcy.bill.service;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class PayVO {	
	private String payId;
	private String stuId;
	private String userId;
	private String billId;
	private int payHTotal;
	private int payHRemain;
	private int payHBal;
	private int a;
	private int b;
	private int c;
	private int d;
	private Date kbs;
	private Date kbe;
	private Date ks1s;
	private Date ks1e;
	private Date ks2s;
	private Date ks2e;
	private Date ks3s;
	private Date ks3e;
	private Date ks4s;
	private Date ks4e;
	private String payHYn;
	private String payHAcc;
	private String payHType;
	private int payDAmount;
	private int payDCount;
	private String payDBank;
	private Date payDDay;
	private String userDept;
	private String userName;
	private String userPhone;
	private String payCount;
	private int payHGrade;
	private int payHSem;
	private String studentAcaYn;
	private int billYear;
	private int billSem;
	private int studentGrade;
	private int studentSem;
	private String majorId;
	private String majorbId;
	private int billAmount;
	private List<String> id;
	private String[] billArr;
	private String token;
	private String accessToken;	
	private String studentToken;
	private int payDBalance;	
	private int payHS1;
	private int payHS2;
	private int payHS3;
}

