package com.kcy.bill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.bill.service.BillsVO;
import com.kcy.bill.service.MajorbVO;
import com.kcy.bill.service.PaySVO;
import com.kcy.bill.service.PayVO;

@Mapper
public interface BillsMapper {
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
	public void payD(PaySVO vo);
	public void firstPay(PaySVO vo);
	public void secondPay(PaySVO vo);
	public void thirdPay(PaySVO vo);
	public void fourthPay(PaySVO vo);
	public void paySplit(PaySVO vo);
	public void payRemain(PaySVO vo);
	public void payYn(PaySVO vo);
	
}
