package com.kcy.bill.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.bill.service.BillsVO;

@Mapper
public interface BillsMapper {
	public void insertBills(BillsVO vo);

}
