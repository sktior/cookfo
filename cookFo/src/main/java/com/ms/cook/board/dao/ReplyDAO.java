package com.ms.cook.board.dao;

import java.util.List;
import java.util.Map;

import com.ms.cook.board.vo.ReplyVO;

public interface ReplyDAO {
	public int replyAdd(Map<String, Object> param);
	public List<ReplyVO> replyList(int bno_num);
}
