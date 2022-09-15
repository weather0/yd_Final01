package com.kcy.lecture.mapper;

import java.util.List;

import com.kcy.lecture.service.RoomVO;

public interface RoomMapper {

	//강의실을 보여주는 부분
	public List<RoomVO>getRoomId(RoomVO vo);
}
