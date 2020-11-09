package com.ms.cook.board.dao;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int replyAdd(Map<String, Object> param) {
		return sqlSession.insert("mappers.replyDAO-mapper.replyAdd",param);
	}
}
