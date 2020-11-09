package com.ms.cook.board.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ms.cook.board.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int replyAdd(Map<String, Object> param) {
		System.out.println(param);
		return sqlSession.insert("mappers.boardDAO-mapper.replyAdd",param);
	}
	
	@Override
	public List<ReplyVO> replyList(int bno_num) {
		return sqlSession.selectList("mappers.boardDAO-mapper.replyList",bno_num);
	}
}
