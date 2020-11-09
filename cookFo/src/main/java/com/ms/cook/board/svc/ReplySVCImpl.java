package com.ms.cook.board.svc;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ms.cook.board.dao.ReplyDAO;
import com.ms.cook.board.vo.ReplyVO;

@Service
public class ReplySVCImpl implements ReplySVC {
	@Inject
	@Qualifier("replyDAOImpl")
	ReplyDAO replyDAO;
	
	@Override
	public int replyAdd(Map<String, Object> param) {
		return replyDAO.replyAdd(param);
	}
	
	@Override
	public List<ReplyVO> replyList(int bno_num) {
		return replyDAO.replyList(bno_num);
	}
}
