package com.ms.cook.board.svc;

import java.util.List;
import java.util.Map;

import com.ms.cook.board.vo.ReplyVO;

public interface ReplySVC {
	public int replyAdd(Map<String,Object> param);
	public List<ReplyVO> replyList(int bno_num);
}
