package com.kcy.bill.service;

import java.util.List;

public interface BillsService {
	public List<MajorbVO> majorbList(MajorbVO vo);
	public List<PayVO> payInfo(PayVO vo);
	public List<PayVO> payStdInfo(PayVO vo);
	public List<PayVO> payCheck(PayVO vo);
	public List<PayVO> billCheck(PayVO vo);
	public void billsInsert(BillsVO vo);
	public void payInsert(PayVO vo);
}
