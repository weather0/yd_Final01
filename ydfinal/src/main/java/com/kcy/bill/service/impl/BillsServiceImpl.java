package com.kcy.bill.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcy.bill.mapper.BillsMapper;
import com.kcy.bill.service.BillsService;
import com.kcy.bill.service.BillsVO;
import com.kcy.bill.service.MajorbVO;

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

}
