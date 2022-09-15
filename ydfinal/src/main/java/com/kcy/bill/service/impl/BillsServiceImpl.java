package com.kcy.bill.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.bill.mapper.BillsMapper;
import com.kcy.bill.service.BillsService;
import com.kcy.bill.service.BillsVO;
import com.kcy.bill.service.MajorbVO;
import com.kcy.bill.service.PaySVO;
import com.kcy.bill.service.PayVO;

@Service
public class BillsServiceImpl implements BillsService {
	
	@Autowired BillsMapper mapper;
	

	@Override
	public void billsInsert(BillsVO vo) {
		mapper.billsInsert(vo);
	}


	@Override
	public List<MajorbVO> majorbList(MajorbVO vo) {
		return mapper.majorbList(vo);
	}


	@Override
	public List<PayVO> payInfo(PayVO vo) {		 
		return mapper.payInfo(vo);
	}


	@Override
	public List<PayVO> payStdInfo(PayVO vo) {		
		return mapper.payStdInfo(vo);
	}


	@Override
	public List<PayVO> payCheck(PayVO vo) {
		return mapper.payCheck(vo);
	}


	@Override
	public void payInsert(PayVO vo) {
		mapper.payInsert(vo);
		
	}


	@Override
	public List<PayVO> billCheck(PayVO vo) {
		return mapper.billCheck(vo);
	}


	@Override
	public List<PayVO> billList(BillsVO vo) {
		return mapper.billList(vo);
	}


	@Override
	public void billUpdate(BillsVO vo) {
		mapper.billUpdate(vo);
		
	}


	@Override
	public void payUpdate(PayVO vo) {
		mapper.payUpdate(vo);
		
	}


	@Override
	public void chkPayInsert(PayVO vo) {
		mapper.chkPayInsert(vo);
		
	}


    @Override
    public void payChange(PayVO vo) {
        mapper.payChange(vo);
        
    }


	@Override
	public void payChangeCancel(PayVO vo) {
		mapper.payChangeCancel(vo);
		
	}


	@Override
	public void insertToken(PayVO vo) {
		mapper.insertToken(vo);
		
	}


	@Override
	public void firstPay(PaySVO vo) {
		mapper.firstPay(vo);
		
	}


	@Override
	public void payRemain(PaySVO vo) {
		mapper.payRemain(vo);
		
	}


	@Override
	public void payYn(PaySVO vo) {
		mapper.payYn(vo);
	}

}
