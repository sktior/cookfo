package com.ms.cook.board.svc;

import java.util.List;
import java.util.Map;

import com.ms.cook.board.vo.ReplyVO;

public interface ReplySVC {
	public int replyAdd(Map<String,Object> param);
	public List<ReplyVO> replyList(int bno_num);
	public String replyCheck(Map<String,Object> param);
	public int replyMod(Map<String,Object> param);
	public int replyDel(Map<String,Object> param);
	
	
	public int rereplyAdd(Map<String,Object> param);
	public List<ReplyVO> getrereply(int bno_num);
}
