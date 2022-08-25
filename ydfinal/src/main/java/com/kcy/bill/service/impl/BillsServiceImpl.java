package com.kcy.bill.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.kcy.bill.mapper.BillsMapper;
import com.kcy.bill.service.BillsService;
import com.kcy.bill.service.BillsVO;

public class BillsServiceImpl implements BillsService {
	
	@Autowired BillsMapper mapper;
	

	@Override
	public void insertBills(BillsVO vo) {
		mapper.insertBills(vo);
	}

}
