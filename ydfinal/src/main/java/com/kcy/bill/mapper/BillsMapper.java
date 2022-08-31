package com.kcy.bill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.bill.service.BillsVO;
import com.kcy.bill.service.MajorbVO;
import com.kcy.bill.service.PayVO;

@Mapper
public interface BillsMapper {
	public List<MajorbVO> majorbList(MajorbVO vo);
	public List<PayVO> payInfo(PayVO vo);
	public List<PayVO> payStdInfo(PayVO vo);
	public List<PayVO> payCheck(PayVO vo);
	public List<PayVO> billCheck(PayVO vo);
	public void billsInsert(BillsVO vo);
	public void payInsert(PayVO vo);

}
