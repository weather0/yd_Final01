package com.kcy.bill.service;

import java.util.List;

public interface BillsService {
	public List<MajorbVO> majorbList(MajorbVO vo);
	public List<PayVO> payInfo(PayVO vo);
	public List<PayVO> payStdInfo(PayVO vo);
	public List<PayVO> payCheck(PayVO vo);
	public List<PayVO> billCheck(PayVO vo);
	public List<PayVO> billList(BillsVO vo);	
	public void billsInsert(BillsVO vo);	
	public void billUpdate(BillsVO vo);
	public void payUpdate(PayVO vo);
	public void payInsert(PayVO vo);
	public void chkPayInsert(PayVO vo);
	public void payChange(PayVO vo);
	public void payChangeCancel(PayVO vo);
	public void insertToken(PayVO vo);
	public void firstPay(PaySVO vo);
	public void payRemain(PaySVO vo);
	public void payYn(PaySVO vo);
}
