package com.ms.cook.board.svc;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ms.cook.board.dao.ReplyDAO;

@Service
public class ReplySVCImpl implements ReplySVC {
	@Inject
	@Qualifier("replyDAOImpl")
	ReplyDAO replyDAO;
	
	@Override
	public int replyAdd(Map<String, Object> param) {
		return replyDAO.replyAdd(param);
	}
}
