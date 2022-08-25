package com.kcy.mentoring.memo.mapper;

import com.kcy.mentoring.memo.service.MentoringMemoVO;

public interface MentoringMapper {
	//public List<UsersVO> mentoringList(상담코드);
	public int mentoringMemoInsert(MentoringMemoVO vo);
}
