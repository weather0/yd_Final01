package com.kcy.bill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kcy.bill.service.BillsVO;
import com.kcy.bill.service.MajorbVO;

@Mapper
public interface BillsMapper {
	public List<MajorbVO> majorbList(MajorbVO vo); 
	public void billsInsert(BillsVO vo);

}
