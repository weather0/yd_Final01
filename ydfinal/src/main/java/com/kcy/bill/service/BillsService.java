package com.kcy.bill.service;

import java.util.List;

public interface BillsService {
	public List<MajorbVO> majorbList(MajorbVO vo);
	public List<PayVO> payInfo(PayVO vo);
	public List<PayVO> payStdInfo(PayVO vo);
	public void billsInsert(BillsVO vo);
}
